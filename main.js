import logger from "./src/logger";
import initBot from "./src/bot";
import database from "./src/services/database";

const bot = initBot();

process.on("SIGINT", async () => {
  logger.info(
    "Caught interrupt signal, destroying bot/database session and exiting"
  );
  await bot.destroy();
  await database.closeConnection();
  // eslint-disable-next-line no-process-exit
  process.exit(0);
});
