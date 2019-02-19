import FreemanBot from "./src/bot";
import env from './src/env';

const bot = new FreemanBot();
bot.start(env.botToken);
