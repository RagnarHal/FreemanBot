import { Command } from "discord.js-commando";
import * as db from "../../services/trivia";
import {
  pointsPerHintLevel,
  createTriviaQuestionString
} from "../../triviaUtils";

export default class TriviaHint extends Command {
  constructor(client) {
    super(client, {
      name: "hint",
      group: "trivia",
      memberName: "hint",
      description: "Vote to increase hint level of current question"
    });
  }

  async run(msg) {
    if (msg.channel.name !== "trivia") {
      msg.reply("This command is only available in the #trivia channel");
      return;
    }

    const { author, guild } = msg;

    try {
      await db.voteIncreaseTriviaHintLevel(guild.id, author.id);

      const voters = await db.getTriviaHintVoteCount(guild.id);

      // minimum of 2 players agree to increase hint level (and reduce points)
      if (voters >= 2) {
        const newHintLevel = await db.increaseTriviaHintLevel(guild.id);
        const trivia = await db.getCurrentTrivia(guild.id);

        msg.reply(
          "Hint Level now at " +
            newHintLevel +
            ". Points Awarded reduced to " +
            pointsPerHintLevel(parseInt(newHintLevel))
        );

        msg.reply(createTriviaQuestionString(trivia, newHintLevel));
      } else {
        msg.reply(
          `Hint requested! Need ${2 - voters} more to increase hint level`
        );
      }
    } catch (err) {
      msg.reply(
        "I'm having trouble communicating with the database, please try again later"
      );
    }
  }
}
