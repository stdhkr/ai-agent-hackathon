import type { Response as ExpressResponse } from "express";
import * as logger from "firebase-functions/logger";
import { Request } from "firebase-functions/v2/https";
import { app as honoApp } from "./app";

export const honoHandler = async (
	req: Request,
	res: ExpressResponse,
	userId: string,
): Promise<void> => {
	try {
		const url = new URL(`${req.protocol}://${req.hostname}${req.url}`);
		const headers = new Headers();
		for (const [k, v] of Object.entries(req.headers)) {
			if (typeof v === "string") {
				headers.set(k, v);
			}
		}

		headers.set("x-user-id", userId);

		let body: BodyInit | undefined;
		if (!["GET", "HEAD"].includes(req.method)) {
			if (Buffer.isBuffer(req.body)) {
				// バイナリの場合
				body = req.body;
			} else if (typeof req.body === "string") {
				body = req.body;
			} else if (req.body) {
				// JSON化
				body = JSON.stringify(req.body);
				headers.set("Content-Type", "application/json");
			}
		}

		const fetchReq = new Request(url, {
			method: req.method,
			headers,
			body,
		});

		const fetchRes = await honoApp.fetch(fetchReq);

		res.status(fetchRes.status);
		for (const [k, v] of fetchRes.headers.entries()) {
			res.setHeader(k, v);
		}

		const reader = fetchRes.body?.getReader();
		if (!reader) {
			res.end();
			return;
		}

		// SSEやchunk送信
		res.setHeader("Transfer-Encoding", "chunked");
		res.flushHeaders();

		while (true) {
			const { value, done } = await reader.read();
			if (done) break;
			res.write(value);
		}
		res.end();
	} catch (err) {
		logger.error("Error in honoHandler:", err);

		if (!res.headersSent) {
			res.status(500).send("Internal Server Error");
		} else {
			res.end();
		}
	}
};
