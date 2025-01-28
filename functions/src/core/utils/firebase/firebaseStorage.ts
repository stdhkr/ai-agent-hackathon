import * as admin from "firebase-admin";

export const uploadImageAndGetPath = async (
	userId: string,
	buffer: Buffer,
	contentType = "image/png",
): Promise<string> => {
	const filePath = `images/${userId}/${Date.now()}.png`;
	const bucket = admin.storage().bucket();
	const file = bucket.file(filePath);

	await file.save(buffer, {
		metadata: {
			contentType,
		},
	});

	return filePath;
};
