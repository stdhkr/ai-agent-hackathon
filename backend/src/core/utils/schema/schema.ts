import { z } from "genkit";

export const AnswerDivisionSchema = z.object({
	question: z.string(),
	answer: z.string(),
});

export const InterestsSchema = AnswerDivisionSchema.extend({
	interests: z.string(),
});

export const GoroSchema = AnswerDivisionSchema.extend({
	catLevel: z.number(),
});

export const GoroOutputSchema = z.object({
	goroTexts: z.array(z.string()),
});

export const MeaningSchema = z.object({
	japanese: z.string(),
	english: z.string(),
});

export type AnswerDivision = z.infer<typeof AnswerDivisionSchema>;
export type Meaning = z.infer<typeof MeaningSchema>;
export type Goro = z.infer<typeof GoroSchema>;
