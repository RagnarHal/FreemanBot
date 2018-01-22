import 'dotenv/config';
import logger from './src/logger';
import initBot from './src/bot';


if (!process.env.BOT_TOKEN) {
  throw new Error('Discord token not found, please include it as a BOT_TOKEN environment variable')
}

const bot = initBot();

process.on('SIGINT', () => {
  logger.info('Caught interrupt signal, destroying bot session and exiting');
  bot.destroy().then(process.exit);
});
