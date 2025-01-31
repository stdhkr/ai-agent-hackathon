import { Timestamp } from "firebase-admin/firestore";
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

export const MeaningSchema = z.object({
	japanese: z.string(),
	english: z.string(),
});

export const UserSchema = z.object({
	avatarURL: z.string(),
	displayName: z.string(),
	interests: z.string(),
	xp: z.number(),
	level: z.number(),
	catLevel: z.number(),
	generatedCount: z.number(),
	isProfileCompleted: z.boolean(),
	createdAt: z.instanceof(Timestamp),
	updatedAt: z.instanceof(Timestamp),
});

export const AvatarSchema = z.object({
	avatarURL: z.string(),
	level: z.number(),
	createdAt: z.instanceof(Timestamp),
	updatedAt: z.instanceof(Timestamp),
});

export type AnswerDivision = z.infer<typeof AnswerDivisionSchema>;
export type Meaning = z.infer<typeof MeaningSchema>;
export type Goro = z.infer<typeof GoroSchema>;
