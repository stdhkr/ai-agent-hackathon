import * as admin from "firebase-admin";

export const fetchFileAsDataUri = async (
	filePath: string,
	prefix = "data:audio/mp4;base64",
) => {
	const [buffer] = await admin.storage().bucket().file(filePath).download();

	const base64 = buffer.toString("base64");
	const dataUri = `${prefix},${base64}`;
	return dataUri;
};
