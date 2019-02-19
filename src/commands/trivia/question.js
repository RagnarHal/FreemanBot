import { Command } from "discord.js-commando";
import * as db from "../../services/trivia";
import logger from "../../logger";
import { createTriviaQuestionString } from "../../triviaUtils";

export default class TriviaQuestion extends Command {
  constructor(client) {
    super(client, {
      name: "question",
      group: "trivia",
      memberName: "question",
      description: "Get the current question"
    });
  }

  async run(msg) {
    if (msg.channel.name !== "trivia") {
      msg.reply("This command is only available in the #trivia channel");
      return;
    }

    const { guild } = msg;

    try {
      const shouldRefreshQuestion = await db.hasTriviaTimedOut(guild.id);

      if (shouldRefreshQuestion) {
        const trivia = await db.beginNewRound(guild.id);
        msg.reply("Times Up! New Question");
        msg.reply(createTriviaQuestionString(trivia, 0));
      } else {
        const [trivia, hintLevel] = await Promise.all([
          db.getCurrentTrivia(guild.id),
          db.getTriviaHintLevel(guild.id)
        ]);

        msg.reply(createTriviaQuestionString(trivia, hintLevel));
      }
    } catch (err) {
      logger.error({ message: err.message, stack: err.stack });
      msg.reply(
        "I'm having trouble communicating with the database, try again later"
      );
    }
  }
}
