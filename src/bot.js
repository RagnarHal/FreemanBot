import { CommandoClient, FriendlyError } from "discord.js-commando";
import path from "path";
import { oneLine } from "common-tags";
import AnswerCommand from "./commands/trivia/answer";
import FirestoreSettingsProvider from "./FirestoreSettingsProvider";
import { firestore } from "./firestore";
import logger from "./logger";
import env from "./env";

export default class FreemanBot {
  constructor() {
    this.client = new CommandoClient({
      commandPrefix: ">",
      owner: env.ownerId,
      disableEveryone: true
    });

    this.client.registry
      .registerDefaultTypes()
      .registerGroups([
        ["various", "Various little tools"],
        ["passive", "Non-invokable, passive commands"],
        ["useful", "Useful tools and helpers"],
        ["quotes", "The HLF Quote Database®"],
        ["trivia", "Play Trivia! (Only available in the #trivia channel)"]
      ])
      .registerDefaultGroups()
      .registerDefaultCommands({ eval: false })
      .registerCommandsIn(path.join(__dirname, "commands"));

    const onReady = () => {
      if (this.client.user) {
        logger.info(
          `Client ready; logged in as ${this.client.user.username}#${
            this.client.user.discriminator
          } (${this.client.user.id})`
        );
      } else {
        logger.error("Client ready but no user on client!");
      }
    };

    // Allow any message to be considered an answer in the #trivia channel
    this.client.on("message", msg => {
      if (msg.author.bot) {
        return;
      }

      if (msg.channel.name === "trivia") {
        const { content } = msg;
        let shouldHandle = true;
        ["answer", "hint", "question", "score", "skip", "report"].forEach(
          cmd => {
            if (~content.indexOf(cmd)) {
              shouldHandle = false;
            }
          }
        );

        if (shouldHandle) {
          logger.info("Handling trivia plain message");
          const command = new AnswerCommand(this.client);

          command.run(msg, { answer: content });
        }
      }
    });

    /* Discord.js events */
    this.client
      .on("ready", onReady)
      .on("error", error => logger.error(`${error.message} - ${error.stack}`))
      .on("warn", (...args) => logger.warn(...args))
      .on("debug", (...args) => logger.info(...args))
      .on("disconnect", () => logger.warn("Disconnected!"))
      .on("reconnecting", () => logger.warn("Reconnecting..."));

    const onCommandError = (cmd, err) => {
      if (err instanceof FriendlyError) {
        return;
      }

      logger.error(`Error in command ${cmd.groupID}:${cmd.memberName}`, err);
    };

    const onCommandBlocked = (msg, reason) => {
      logger.info(oneLine`
          Command ${
            msg.command
              ? `${msg.command.groupID}:${msg.command.memberName}`
              : ""
          }
          blocked; ${reason}
        `);
    };
    /* Commando events */
    this.client
      .on("commandError", onCommandError)
      .on("commandBlocked", onCommandBlocked);

    const settingsCollectionName = env.isProduction
      ? "guildSettings"
      : "guildSettings--dev";
    this.client.setProvider(
      new FirestoreSettingsProvider(firestore, settingsCollectionName)
    );

    this.client.login(env.botToken);
  }

  start(token) {
    this.client.login(token);
  }
}
