import type { HonoVariables } from "@/core/utils/types/hono.js";
import { Hono } from "hono";
import { fetchFileAsDataUri } from "../core/utils/firebase/fetchFileAsDataUri.js";
import { uploadImageAndGetPath } from "../core/utils/firebase/firebaseStorage.js";
import {
	answerDivisionFlowWithSchema,
	generateImageFlow,
	goroFlow,
	interestsFlow,
	meaningFlow,
} from "../core/utils/genai/flow.js";

export const genaiRoute = new Hono<{ Variables: HonoVariables }>();

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

		const userId = c.get("userId") as string | undefined;

		if (!userId) {
			return c.json({ error: "userId is required." }, 400);
		}
		console.info("Received userId in Hono:", userId);

		const audioBase64 = await fetchFileAsDataUri(audioPath);

		const { question, answer } =
			await answerDivisionFlowWithSchema(audioBase64);
		console.info("STEP1 (音声テキスト化) response:", { question, answer });

		const meaning = await meaningFlow({ question, answer });
		console.info("STEP2 (意味生成) response:", meaning);

		const episode = interests
			? await interestsFlow({ question, answer, interests })
			: null;
		console.info("STEP3 (意味生成) response:", episode);

		const goro = await goroFlow({ question, answer, catLevel });
		console.info("STEP4 (ゴロ生成) response:", goro);

		const { url, contentType } = await generateImageFlow(meaning.english);
		console.info("STEP5 (画像生成) response:", url, contentType);

		const base64Data = url.replace(/^data:image\/\w+;base64,/, "");
		const buffer = Buffer.from(base64Data, "base64");
		const imagePath = await uploadImageAndGetPath(userId, buffer, contentType);
		console.info("STEP6 (画像保存) response:", imagePath);

		return c.json(
			{
				question,
				answer,
				meaning: meaning.japanese,
				episode,
				goroTexts: goro.goroTexts,
				imagePath,
			},
			200,
		);
	} catch (error) {
		console.error("Error in /generate-mnemonic:", error);
		return c.json({ error: String(error) }, 500);
	}
});
