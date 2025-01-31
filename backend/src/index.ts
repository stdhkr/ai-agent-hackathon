import { serve } from "@hono/node-server";
import { initializeApp } from "firebase-admin/app";
import { Hono } from "hono";
import { logger } from "hono/logger";
import { firebaseBearerAuth } from "./middleware/firebaseBearerAuth.js";
import { genaiRoute } from "./routes/genai.js";

initializeApp({
	storageBucket: process.env.STORAGE_BUCKET,
});

const app = new Hono();

app.use(logger());

app.use("/api/*", firebaseBearerAuth);

app.route("/api/", genaiRoute);

app.get("/", (c) => {
	return c.text("Hello Hono!");
});

const port = 8080;

serve({
	fetch: app.fetch,
	port,
});
