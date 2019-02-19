import "dotenv/config";
import { stripIndent } from "common-tags";
import logger from "./logger";

function setupEnv() {
  const environment = process.env.NODE_ENV || "development";
  const isProduction = environment === "production";
  const isDevelopment = environment === "development";

  validateEnvironment();

  return {
    environment,
    isProduction,
    isDevelopment,
    ownerId: process.env.OWNER_ID,
    botToken: process.env.BOT_TOKEN,
    google: {
      apiKey: process.env.GOOGLE_API_KEY
    },
    oxford: {
      appId: process.env.OXFORD_APP_ID,
      appKey: process.env.OXFORD_APP_KEY,
      baseUrl: process.env.OXFORD_BASE_URL
    },
    firebase: {
      databaseUrl: process.env.FIREBASE_DATABASE_URL,
      projectId: process.env.FIREBASE_PROJECT_ID,
      privateKey: JSON.parse(`"${process.env.FIREBASE_PRIVATE_KEY}"`),
      clientEmail: process.env.FIREBASE_CLIENT_EMAIL
    }
  };
}

function validateEnvironment() {
  const requiredEnvKeys = [
    "FIREBASE_DATABASE_URL",
    "FIREBASE_PROJECT_ID",
    "FIREBASE_PRIVATE_KEY",
    "FIREBASE_CLIENT_EMAIL",
    "BOT_TOKEN",
    "OWNER_ID",
    "GOOGLE_API_KEY",
    "OXFORD_APP_ID",
    "OXFORD_APP_KEY",
    "OXFORD_BASE_URL"
  ];

  const missingKeys = requiredEnvKeys.reduce((missing, key) => {
    if (!process.env[key]) {
      missing.push(key);
    }
    return missing;
  }, []);

  if (missingKeys.length) {
    logger.error(stripIndent`
    The following environment variables are missing but are required:
    ---
    ${missingKeys.join("\n")}
    ---
    exiting...
    `);
    throw new Error("Environment validation failed");
  }
}

export default setupEnv();
