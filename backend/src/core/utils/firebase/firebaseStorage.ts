import { getStorage } from "firebase-admin/storage";

export const uploadImageAndGetPath = async (
	userId: string,
	buffer: Buffer,
	contentType = "image/png",
): Promise<string> => {
	const storage = getStorage();
	const filePath = `images/${userId}/${Date.now()}.png`;
	const bucket = storage.bucket();
	const file = bucket.file(filePath);

	await file.save(buffer, {
		metadata: {
			contentType,
		},
	});

	return filePath;
};
