import { Command } from "discord.js-commando";
import logger from "../../logger";
import * as db from "../../services/trivia";
import { levenshtein } from "../../utils";
import {
  pointsPerHintLevel,
  createTriviaQuestionString
} from "../../triviaUtils";

export default class TriviaAnswer extends Command {
  constructor(client) {
    super(client, {
      name: "answer",
      group: "trivia",
      memberName: "answer",
      description: "Submit your answer",
      args: [
        {
          key: "answer",
          prompt: "What is your guess?",
          type: "string"
        }
      ]
    });
  }

  async run(msg, { answer }) {
    if (msg.channel.name !== "trivia") {
      msg.reply("This command is only available in the #trivia channel");
      return;
    }

    const { author, guild } = msg;

    try {
      let trivia = await db.getCurrentTrivia(guild.id);

      const resp = answer.trim().toUpperCase();
      const ans = trivia.answer.trim().toUpperCase();

      const lev = levenshtein(resp, ans);
      if (lev === 0) {
        const hintLevel = await db.getTriviaHintLevel(guild.id);

        const points = pointsPerHintLevel(parseInt(hintLevel));

        const score = await db.awardTriviaPoints(
          guild.id,
          author.id,
          author.username,
          points
        );

        msg.reply(`Correct! Your score is now ${score} pts!`);

        trivia = await db.beginNewRound(guild.id);

        msg.reply(createTriviaQuestionString(trivia, 0));
      } else if (lev <= 3) {
        msg.reply("You are very close!");
      }
    } catch (err) {
      logger.error({ message: err.message, stack: err.stack });
    }
  }
}
