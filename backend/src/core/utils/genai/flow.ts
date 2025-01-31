import { z } from "genkit";
import {
	AnswerDivisionSchema,
	GoroSchema,
	InterestsSchema,
	MeaningSchema,
} from "../schema/schema.js";
import { defineRetryFlow } from "./flowExtensions.js";
import {
	answerDivisionPrompt,
	catLevelPromptTexts,
	generateImagePrompt,
	goroPrompt,
	interestsPrompt,
	meaningPrompt,
} from "./prompts.js";
import { ai, gemini20FlashExp, imagen3 } from "./vertexAi.js";

export const answerDivisionFlowWithSchema = defineRetryFlow(
	ai,
	{
		name: "answerDivisionFlow",
		inputSchema: z.string(),
		outputSchema: AnswerDivisionSchema,
	},
	async (input) => {
		const { output } = await ai.generate({
			model: gemini20FlashExp,
			prompt: [
				{ media: { url: input } },
				{
					text: answerDivisionPrompt,
				},
			],
			output: { schema: AnswerDivisionSchema },
		});
		if (output == null) {
			throw new Error("Response doesn't satisfy schema.");
		}
		return output;
	},
);

export const meaningFlow = defineRetryFlow(
	ai,
	{
		name: "meaningFlow",
		inputSchema: AnswerDivisionSchema,
		outputSchema: MeaningSchema,
	},
	async (input) => {
		const prompt = meaningPrompt
			.replace("{QUESTION}", input.question)
			.replace("{ANSWER}", input.answer);
		const { output } = await ai.generate({
			model: gemini20FlashExp,
			prompt,
			output: { schema: MeaningSchema },
		});
		if (output == null) {
			throw new Error("Response doesn't satisfy schema.");
		}
		return output;
	},
);

export const interestsFlow = defineRetryFlow(
	ai,
	{
		name: "interestsFlow",
		inputSchema: InterestsSchema,
		outputSchema: z.string(),
	},
	async (input) => {
		const prompt = interestsPrompt
			.replace("{QUESTION}", input.question)
			.replace("{ANSWER}", input.answer)
			.replace("{INTERESTS}", input.interests);
		const { text } = await ai.generate({
			model: gemini20FlashExp,
			prompt,
		});
		if (text == null) {
			throw new Error("Response doesn't satisfy schema.");
		}
		return text;
	},
);

export const goroFlow = defineRetryFlow(
	ai,
	{
		name: "goroFlow",
		inputSchema: GoroSchema,
		outputSchema: z.string(),
	},
	async (input) => {
		const prompt = goroPrompt
			.replace("{QUESTION}", input.question)
			.replace("{ANSWER}", input.answer)
			.replace("{CAT_LEVEL_TEXT}", catLevelPromptTexts[input.catLevel - 1]);
		const { text } = await ai.generate({
			model: gemini20FlashExp,
			prompt,
		});
		if (text == null) {
			throw new Error("Response doesn't satisfy schema.");
		}
		return text;
	},
);

export const generateImageFlow = defineRetryFlow(
	ai,
	{
		name: "generateImage",
		inputSchema: z.string(),
		outputSchema: z.object({
			url: z.string(),
			contentType: z.string(),
		}),
	},
	async (input) => {
		const prompt = generateImagePrompt.replace("{MEANING}", input);
		const maxAttempts = 2;
		let attempt = 0;

		while (attempt < maxAttempts) {
			try {
				const { media } = await ai.generate({
					model: imagen3,
					prompt,
					output: { format: "media" },
				});

				if (!media || !media.url || !media.contentType) {
					throw new Error("Invalid response from AI model.");
				}

				return {
					url: media.url,
					contentType: media.contentType,
				};
			} catch (error) {
				attempt++;
				console.warn(
					`Image generation failed (attempt ${attempt}/${maxAttempts}):`,
					error,
				);

				if (attempt < maxAttempts) {
					await new Promise((resolve) => setTimeout(resolve, 100)); // 100ms待機
				}
			}
		}

		console.error("Image generation failed after multiple attempts.");

		throw new Error("Image generation failed after multiple attempts.");
	},
);
