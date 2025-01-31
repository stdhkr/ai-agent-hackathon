import { getAuth } from "firebase-admin/auth";
import { bearerAuth } from "hono/bearer-auth";

export const firebaseBearerAuth = bearerAuth({
	verifyToken: async (token, c) => {
		try {
			const auth = getAuth();
			const decoded = await auth.verifyIdToken(token);
			c.set("userId", decoded.uid);
			return true;
		} catch (err) {
			console.error("Invalid Firebase token:", err);
			return false;
		}
	},
});
