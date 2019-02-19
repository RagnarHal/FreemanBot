import { Command } from "discord.js-commando";
import logger from "../../logger";
import * as db from "../../services/trivia";

export default class TriviaReport extends Command {
  constructor(client) {
    super(client, {
      name: "report",
      group: "trivia",
      memberName: "report",
      description: "Report a question",
      args: [
        {
          key: "questionId",
          prompt: "Which question do you want to report? (None for current)",
          type: "string",
          default: ""
        }
      ]
    });
  }

  async run(msg, { questionId }) {
    if (msg.channel.name !== "trivia") {
      msg.reply("This command is only available in the #trivia channel");
      return;
    }
    const { guild } = msg;

    let triviaId;
    if (questionId) {
      triviaId = parseInt(questionId);
    } else {
      try {
        const trivia = await db.getCurrentTrivia(guild.id);
        triviaId = trivia.id;
      } catch (err) {
        logger.error({ message: err.message, stack: err.stack });
        msg.reply(
          "I am having trouble connecting to the database, try again later"
        );
        return;
      }
    }

    if (isNaN(triviaId)) {
      msg.reply("Invalid trivia ID");
      return;
    }

    try {
      const res = await db.reportTriviaQuestion(triviaId);
      if (!res) {
        msg.reply(`Trivia #${triviaId} not found`);
        return;
      }

      msg.reply(`Trivia #${triviaId} reported`);
    } catch (err) {
      logger.error({ message: err.message, stack: err.stack });
      msg.reply(
        "I am having trouble connecting to the database, try again later"
      );
    }
  }
}
