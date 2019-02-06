import "dotenv/config";

export default {
  node: process.env.NODE_ENV,
  isProduction: process.env.NODE_ENV === "production",
  isDevelop: process.env.NODE_ENV === "development",
  botToken: process.env.BOT_TOKEN,
  google: {
    apiKey: process.env.GOOGLE_API_KEY
  },
  postgres: {
    connectionString: process.env.DATABASE_URL
  },
  firebase: {
    user: process.env.FIREBASE_USER,
    password: process.env.FIREBASE_PASSWORD
  },
  oxford: {
    appId: process.env.OXFORD_APP_ID,
    appKey: process.env.OXFORD_APP_KEY,
    baseUrl: process.env.OXFORD_BASE_URL,
    timeout: process.env.OXFORD_TIMEOUT_MS || 5000
  }
};
