import {
	gemini15Flash,
	gemini20FlashExp,
	imagen3,
	vertexAI,
} from "@genkit-ai/vertexai";
import { genkit } from "genkit";
import { aiRegion } from "../../constants/constants";

export const ai = genkit({
	plugins: [vertexAI({ location: aiRegion })],
});

export { gemini15Flash, gemini20FlashExp, imagen3 };
