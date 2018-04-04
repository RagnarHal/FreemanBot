import { Pool } from "pg";
import logger from "../../logger";
import env from "../../env";

function createConnectionPool() {
  logger.info("Creating new DB pool");

  const connectionPool = new Pool({
    connectionString: env.postgres.connectionString,
    ssl: env.isProduction
  });

  connectionPool.on("error", async err => {
    logger.error("Unexpected error on Database connection", {
      error: err.message
    });
  });

  return connectionPool;
}

let pool;
export function getPool() {
  if (!pool) {
    pool = createConnectionPool();
  }

  return pool;
}

export async function init() {
  try {
    await getPool().connect();
    logger.info("Connected to Postgres database!");
  } catch (err) {
    logger.error("Error connecting to database", err);
  }
}

export function teardown() {
  return getPool()
    .end()
    .then(() => logger.info("Cleanly disconnected from database"))
    .catch(err => logger.error("Error disconnecting from database", err));
}
