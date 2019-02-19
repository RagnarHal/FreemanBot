import { Command } from "discord.js-commando";
import * as db from "../../services/trivia";

export default class TriviaScore extends Command {
  constructor(client) {
    super(client, {
      name: "score",
      group: "trivia",
      memberName: "score",
      description: "Get your current Trivia score"
    });
  }

  async run(msg) {
    if (msg.channel.name !== "trivia") {
      msg.reply("This command is only available in the #trivia channel");
      return;
    }

    const { author, guild } = msg;

    try {
      const points = await db.getTriviaScore(guild.id, author.id);
      msg.reply(`your score is ${points} pts`);
    } catch (err) {
      msg.reply(
        "I'm having trouble communicating with the database, please try again later"
      );
    }
  }
}
