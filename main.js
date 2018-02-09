import "dotenv/config";
import logger from "./src/logger";
import initBot from "./src/bot";
import { teardown as dbTeardown } from "./src/services/database";

try {
  const bot = initBot();
} catch (err) {
  console.log(err);
}

process.on("SIGINT", async () => {
  logger.info(
    "Caught interrupt signal, destroying bot/database session and exiting"
  );
  await bot.destroy();
  await dbTeardown();
  // eslint-disable-next-line no-process-exit
  process.exit(0);
});
