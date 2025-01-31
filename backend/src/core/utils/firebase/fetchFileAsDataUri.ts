import { getStorage } from "firebase-admin/storage";

export const fetchFileAsDataUri = async (
	filePath: string,
	prefix = "data:audio/mp4;base64",
) => {
	const storage = getStorage();
	const [buffer] = await storage.bucket().file(filePath).download();

	const base64 = buffer.toString("base64");
	const dataUri = `${prefix},${base64}`;
	return dataUri;
};
