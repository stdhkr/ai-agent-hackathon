import * as logger from "firebase-functions/logger";
import type { Genkit, z } from "genkit";

export const withRetry = async <T>(
	fn: () => Promise<T>,
	maxAttempts = 2,
	delayMs = 100,
): Promise<T> => {
	let attempt = 0;
	while (attempt < maxAttempts) {
		try {
			return await fn();
		} catch (error) {
			attempt++;
			logger.warn(`Attempt ${attempt} of ${maxAttempts} failed:`, error);
			if (attempt < maxAttempts) {
				await new Promise((resolve) => setTimeout(resolve, delayMs));
			}
		}
	}
	logger.error(`All ${maxAttempts} attempts have failed.`);
	throw new Error(`All ${maxAttempts} attempts have failed.`);
};

export const defineRetryFlow = <I, O>(
	ai: Genkit,
	config: {
		name: string;
		inputSchema: z.Schema<I>;
		outputSchema: z.Schema<O>;
		maxAttempts?: number;
		delayMs?: number;
	},
	flowFn: (input: I) => Promise<O>,
) => {
	const {
		name,
		inputSchema,
		outputSchema,
		maxAttempts = 2,
		delayMs = 100,
	} = config;

	return ai.defineFlow(
		{
			name,
			inputSchema,
			outputSchema,
		},
		async (input) => {
			return withRetry(() => flowFn(input), maxAttempts, delayMs);
		},
	);
};
