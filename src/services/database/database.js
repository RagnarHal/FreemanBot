import { Client } from "pg";
import logger from "../../logger";
import env from "../../env";

let client;

export function getClient() {
  if (!client) {
    client = new Client({
      connectionString: env.postgres.connectionString,
      ssl: env.isProduction
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
