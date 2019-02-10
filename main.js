import logger from "./src/logger";
import initBot from "./src/bot";

const bot = initBot();

process.on("SIGINT", async () => {
  logger.info(
    "Caught interrupt signal, destroying bot and exiting"
  );
  await bot.destroy();
  // eslint-disable-next-line no-process-exit
  process.exit(0);
});
