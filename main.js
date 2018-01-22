import 'dotenv/config';
import logger from './src/logger';
import initBot from './src/bot';

const bot = initBot();

process.on('SIGINT', () => {
  logger.info('Caught interrupt signal, destroying bot session and exiting');
  bot.destroy().then(process.exit);
});
