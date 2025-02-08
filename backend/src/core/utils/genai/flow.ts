import { z } from "genkit";
import {
	AnswerDivisionSchema,
	GoroOutputSchema,
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
		outputSchema: GoroOutputSchema,
	},
	async (input) => {
		const prompt = goroPrompt
			.replace("{QUESTION}", input.question)
			.replace("{ANSWER}", input.answer)
			.replace("{CAT_LEVEL_TEXT}", catLevelPromptTexts[input.catLevel - 1]);
		const { output } = await ai.generate({
			model: gemini20FlashExp,
			prompt,
			output: { schema: GoroOutputSchema },
		});
		if (output == null) {
			throw new Error("Response doesn't satisfy schema.");
		}
		return output;
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
	},
);
