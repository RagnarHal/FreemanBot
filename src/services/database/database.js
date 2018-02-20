if (!process.env.DATABASE_URL) {
  throw new Error("DATABASE_URL environment variable missing");
}
import logger from "../../logger";
import { Client } from "pg";

let client;

export function getClient() {
  if (!client) {
    client = new Client({
      connectionString: process.env.DATABASE_URL,
      ssl: process.env.NODE_ENV === "production"
    });
  }

  return client;
}

export async function init() {
  try {
    await getClient().connect();
    logger.info("Connected to Postgres database!");
  } catch (err) {
    logger.error("Error connecting to database", err);
  }
}

export function teardown() {
  return getClient()
    .end()
    .catch(err => logger.error("Error disconnecting from database", err));
}
