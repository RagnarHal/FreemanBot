import Discord from 'discord.js';
import handlers from './commands';
import config from './config.json';
import logger from './logger';

function handleCommand(message, command, args) {
  const handler = handlers[command];
  typeof handler === 'function'
    ? handler(message, args)
    : message.reply(`I don't know how to handle a ${config.prefix}${command} command...`);
}

export default function start() {
  const client = new Discord.Client();

  client.on('ready', () => {
    logger.info(`Bot has started, with ${client.users.size} users, in ${client.channels.size} channels of ${client.guilds.size} guilds.`);
  });

  client.on('message', message => {
    if (message.author.bot) { return; }
    if (message.content.indexOf(config.prefix) !== 0) { return; }
  
    const args = message.content.slice(config.prefix.length).trim().split(/ +/g);
    const command = args.shift().toLowerCase();
  
    handleCommand(message, command, args);
  
    // Timezone conversions (like !time iceland, !time tokyo)
    // Quotes
    // Question/Answer (like !whatisbestinlife)
    // Temperature conversion
    // Hug (!hug)
    // magic 8-ball
    // Lookup (dictionary)
  });

  client.login(process.env.BOT_TOKEN);
  return client;
}
