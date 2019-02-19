import { Command } from "discord.js-commando";
import * as db from "../../services/trivia";

export default class TriviaSkip extends Command {
  constructor(client) {
    super(client, {
      name: "skip",
      group: "trivia",
      memberName: "skip",
      description: "Vote to skip the current question"
    });
  }

  async run(msg) {
    if (msg.channel.name !== "trivia") {
      msg.reply("This command is only available in the #trivia channel");
      return;
    }

    const { guild, author } = msg;

    try {
      const skipCount = await db.voteTriviaSkip(guild.id, author.id);

      if (skipCount >= 2) {
        const newTrivia = await db.beginNewRound(guild.id);

        return msg.reply(
          `Trivia skipped! New question: #${newTrivia.id}: ${
            newTrivia.question
          }`
        );
      }

      msg.reply(`Skip requested! Need ${2 - skipCount} more to skip question`);
    } catch (err) {
      msg.reply(
        "I'm having trouble communicating with the database, try again later"
      );
    }
  }
}
