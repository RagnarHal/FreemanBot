import Discord from "discord.js";
import trivia from "./plugins/trivia";
import { setupNewGuildIfNotExists } from './services/trivia';
import handlers from "./commands";
import config from "./config.json";
import logger from "./logger";
import env from "./env";

function handleCommand(message, command, args, client) {
  const handler = handlers[command];
  typeof handler === "function"
    ? handler(message, args, client)
    : message.reply(
      `I don't know how to handle a ${config.prefix}${command} command...`
    );
}

async function createTriviaChannel(guild) {
  await setupNewGuildIfNotExists(guild.id);

  if (guild.channels.exists("name", "trivia")) {
    logger.info(`Trivia channel for guild ${guild.name} already exists`);
    return;
  }

  try {
    await guild.createChannel("trivia", "text");
    logger.info(`Created trivia channel for guild ${guild.name}`);
  } catch (err) {
    logger.error(`Unable to create trivia channel for guild ${guild.name}`, {
      reason: err.message
    });
  }
}

export default function start() {
  const client = new Discord.Client();

  client.on("ready", () => {
    logger.info(
      `Bot has started, with ${client.users.size} users, in ${
      client.channels.size
      } channels of ${client.guilds.size} guilds.`
    );

    logger.info("Creating trivia channels for guilds");
    client.guilds.array().forEach(createTriviaChannel);
  });

  client.on("message", message => {
    if (message.author.bot) {
      return;
    }

    if (message.channel.name === "trivia") {
      trivia(message);
      return;
    }

    if (message.content === "(╯°□°）╯︵ ┻━┻") {
      handleCommand(message, "fixtable");
      return;
    }

    // Check every message for temperature conversions
    handleCommand(message, "temperature");

    if (message.content.indexOf(config.prefix) !== 0) {
      return;
    }

    const args = message.content
      .slice(config.prefix.length)
      .trim()
      .split(/ +/g);
    const command = args.shift().toLowerCase();

    handleCommand(message, command, args, client);
  });

  client.login(env.botToken);
  return client;
}
