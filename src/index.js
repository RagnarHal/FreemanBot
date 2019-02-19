import FreemanBot from "./bot";
import env from './env';

const bot = new FreemanBot();
bot.start(env.botToken);
