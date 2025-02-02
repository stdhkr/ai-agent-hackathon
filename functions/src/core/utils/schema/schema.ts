import { Timestamp } from "firebase-admin/firestore";
import { z } from "zod";

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
