import * as admin from "firebase-admin";
import * as logger from "firebase-functions/logger";
import { onDocumentUpdated } from "firebase-functions/v2/firestore";
import { defaultRegion } from "../core/constants/constants";
import { calculateLevel } from "../core/utils/calculations/levelCalculator";
import { AvatarSchema, UserSchema } from "../core/utils/schema/schema";

export const onUserXpChange = onDocumentUpdated(
	{
		document: "users/{userId}",
		region: defaultRegion,
	},
	async (event) => {
		const beforeRawData = event.data?.before.data();
		const afterRawData = event.data?.after.data();

		if (!beforeRawData || !afterRawData) {
			return;
		}

		try {
			const beforeUser = UserSchema.parse(beforeRawData);
			const afterUser = UserSchema.parse(afterRawData);

			if (beforeUser.xp === afterUser.xp) {
				return;
			}

			const newLevel = calculateLevel(afterUser.xp);

			if (newLevel === afterUser.level) {
				return;
			}

			const snapshot = await admin
				.firestore()
				.collection("avatars")
				.where("level", "==", Math.min(newLevel, 8))
				.limit(1)
				.get();

			if (snapshot.empty) {
				logger.error(`No avatar found for level = ${newLevel}`);
				await event.data?.after.ref.update({
					level: newLevel,
					updatedAt: admin.firestore.FieldValue.serverTimestamp(),
				});
				return;
			}

			const doc = snapshot.docs[0];
			const avatarData = AvatarSchema.parse(doc.data());

			await event.data?.after.ref.update({
				level: newLevel,
				avatarURL: avatarData.avatarURL,
				updatedAt: admin.firestore.FieldValue.serverTimestamp(),
			});

			await event.data?.after.ref.update({
				level: newLevel,
				updatedAt: admin.firestore.FieldValue.serverTimestamp(),
			});
		} catch (err) {
			logger.error("Zod validation error:", err);
			return;
		}
	},
);
