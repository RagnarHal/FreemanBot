import { Client } from "pg";
import logger from "../../logger";
import env from "../../env";

class DatabaseClientManager {
  constructor() {
    this.openNewConnection();
    this.retryCount = 0;
  }

  calculateBackoffTime() {
    const maxBackoffTimeMs = 60 * 60 * 1000; // 1 hour
    const backoffTimeMs = 2 * Math.pow(2, this.retryCount) * 1000;

    return Math.min(maxBackoffTimeMs, backoffTimeMs);
  }

  scheduleRetryConnection() {
    if (!this.retryTimeoutId) {
      const backoff = this.calculateBackoffTime();
      logger.info(
        `Attempting to re-establish connection to database in ${backoff /
          1000} seconds...`
      );

      this.retryTimeoutId = setTimeout(() => {
        logger.info("Attemping to re-establish connection to database now");

        this.retryCount++;
        this.retryTimeoutId = null;

        this.openNewConnection();
      }, backoff);
    }
  }

  async closeConnection() {
    if (!this.client) {
      logger.warn(
        "Attempted to close database connection but no client was found."
      );
      return;
    }

    try {
      await this.client.end();
      logger.info("Postgres connection closed and client destroyed ");
    } catch (err) {
      logger.error("Error disconnecting from database", err);
    } finally {
      this.client = null;
    }
  }

  async openNewConnection() {
    if (this.client) {
      await this.closeConnection();
    }

    this.client = new Client({
      connectionString: env.postgres.connectionString,
      ssl: env.isProduction
    });

    try {
      await this.client.connect();
      this.setupErrorHandler();
      this.retryCount = 0;
      logger.info("Connected to Postgres database!");
    } catch (err) {
      logger.error("Error connecting to database", err);
      await this.closeConnection();
      this.scheduleRetryConnection();
    }
  }

  setupErrorHandler() {
    if (!this.client) {
      logger.warn("Attempted to setup error handler on non-existing client");
      return;
    }

    this.client.on("error", async err => {
      logger.error(
        "Unexpected error on database client. Refreshing connection",
        {
          error: err.message
        }
      );

      await this.openNewConnection();
    });
  }

  getClient() {
    if (!this.client) {
      throw new Error("Connection to database cannot be established");
    }

    return this.client;
  }
}

export default new DatabaseClientManager();
