import * as admin from "firebase-admin";
import { setGlobalOptions } from "firebase-functions/v2";
import { defaultRegion } from "./core/constants/constants";
import { onUserXpChange } from "./triggers/users";

admin.initializeApp();

setGlobalOptions({
	region: defaultRegion,
});

export { onUserXpChange };
