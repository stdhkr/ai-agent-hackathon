import * as logger from "firebase-functions/logger";
import { Hono } from "hono";
import { fetchFileAsDataUri } from "../core/utils/firebase/fetchFileAsDataUri";
import { uploadImageAndGetPath } from "../core/utils/firebase/firebaseStorage";
import {
	answerDivisionFlowWithSchema,
	generateImageFlow,
	goroFlow,
	interestsFlow,
	meaningFlow,
} from "../core/utils/genai/flow";

export const genaiRoute = new Hono();

genaiRoute.post("/generate-mnemonic", async (c) => {
	try {
		const { audioPath, catLevel, interests } = await c.req.json<{
			audioPath?: string;
			catLevel?: number;
			interests?: string;
		}>();
		if (!audioPath) {
			return c.json({ error: "No audioPath provided" }, 400);
		}
		if (!catLevel) {
			return c.json({ error: "No catLevel provided" }, 400);
		}

		const userId = c.req.header("x-user-id") || "unknown-user";
		if (!userId) {
			return c.json({ error: "x-user-id is required." }, 400);
		}
		logger.info("Received userId in Hono:", userId);

		const audioBase64 = await fetchFileAsDataUri(audioPath);

		const { question, answer } =
			await answerDivisionFlowWithSchema(audioBase64);
		logger.info("STEP1 (音声テキスト化) response:", { question, answer });

		const meaning = await meaningFlow({ question, answer });
		logger.info("STEP2 (意味生成) response:", meaning);

		const episode = interests
			? await interestsFlow({ question, answer, interests })
			: null;
		logger.info("STEP3 (意味生成) response:", episode);

		const goroText = await goroFlow({ question, answer, catLevel });
		logger.info("STEP4 (ゴロ生成) response:", goroText);

		const { url, contentType } = await generateImageFlow(meaning.english);
		logger.info("STEP5 (画像生成) response:", url, contentType);

		const base64Data = url.replace(/^data:image\/\w+;base64,/, "");
		const buffer = Buffer.from(base64Data, "base64");
		const imagePath = await uploadImageAndGetPath(userId, buffer, contentType);
		logger.info("STEP6 (画像保存) response:", imagePath);

		return c.json(
			{
				question,
				answer,
				meaning: meaning.japanese,
				episode,
				goroText,
				imagePath,
			},
			200,
		);
	} catch (error) {
		logger.error("Error in /generate-mnemonic:", error);
		return c.json({ error: String(error) }, 500);
	}
});
