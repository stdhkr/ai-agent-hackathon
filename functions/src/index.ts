import * as admin from "firebase-admin";
import * as logger from "firebase-functions/logger";
import { setGlobalOptions } from "firebase-functions/v2";
import { onRequest } from "firebase-functions/v2/https";
import { defaultRegion } from "./core/constants/constants";
import { honoHandler } from "./handler";
import { onUserXpChange } from "./triggers/users";

admin.initializeApp();

setGlobalOptions({
	region: defaultRegion,
	timeoutSeconds: 180,
});

export const api = onRequest({}, async (req, res) => {
	try {
		const authHeader = req.headers.authorization;
		if (!authHeader || !authHeader.startsWith("Bearer ")) {
			res.status(401).send("No auth token");
			return;
		}
		const idToken = authHeader.replace("Bearer ", "");
		try {
			const decoded = await admin.auth().verifyIdToken(idToken);
			const userId = decoded.uid;
			await honoHandler(req, res, userId);
		} catch (error) {
			logger.error("Invalid ID token:", error);
			res.status(401).send("Unauthorized");
			return;
		}
	} catch (error) {
		logger.error("Error in onRequest api:", error);
		if (!res.headersSent) {
			res.status(500).send("Internal Server Error");
		} else {
			res.end();
		}
	}
});

export { onUserXpChange };
