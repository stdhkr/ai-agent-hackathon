import { Hono } from "hono";
import { genaiRoute } from "./routes/genai";

export const app = new Hono();

app.route("/", genaiRoute);
