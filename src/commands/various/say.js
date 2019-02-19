import { Command } from "discord.js-commando";
import logger from "./../../logger";

export default class SayCommand extends Command {
  constructor(client) {
    super(client, {
      name: "say",
      group: "various",
      memberName: "say",
      description: "Put words in my mouth",
      examples: ["say Hi there!"],
      args: [
        {
          key: "text",
          prompt: "What text would you like the bot to say?",
          type: "string"
        }
      ]
    });
  }

  async run(msg, { text }) {
    await msg.delete().catch((err) => logger.error(`${err.message} - ${err.stack}`));
    return msg.say(text);
  }
}
