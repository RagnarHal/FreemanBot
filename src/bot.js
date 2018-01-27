if (!process.env.BOT_TOKEN) {
  throw new Error('Discord token not found, please include it as a BOT_TOKEN environment variable')
}

import Discord from 'discord.js';
import handlers from './commands';
import config from './config.json';
import logger from './logger';
import { init as dbInit } from './services/database';

function handleCommand(message, command, args, client) {
  const handler = handlers[command];
  typeof handler === 'function'
    ? handler(message, args, client)
    : message.reply(`I don't know how to handle a ${config.prefix}${command} command...`);
}

export default function start() {
  const client = new Discord.Client();
  dbInit();

  client.on('ready', () => {
    logger.info(`Bot has started, with ${client.users.size} users, in ${client.channels.size} channels of ${client.guilds.size} guilds.`);
  });

  client.on('message', message => {
    if (message.author.bot) { return; }

    if (message.content === '(╯°□°）╯︵ ┻━┻') {
      handleCommand(message, 'fixtable');
      return;
    }

    // Check every message for temperature conversions
    handleCommand(message, 'temperature');

    if (message.content.indexOf(config.prefix) !== 0) { return; }
  
    const args = message.content.slice(config.prefix.length).trim().split(/ +/g);
    const command = args.shift().toLowerCase();
  
    handleCommand(message, command, args, client);
  
    // Quotes
    // Question/Answer (like !whatisbestinlife)
    // Lookup (dictionary)
  });

  client.login(process.env.BOT_TOKEN);
  return client;
}
