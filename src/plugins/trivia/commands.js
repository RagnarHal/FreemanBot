import * as db from "../../services/trivia";
import { levenshtein } from "../../utils";
import logger from "../../logger";
import { pointsPerHintLevel, createTriviaQuestionString } from "./helpers";

export async function help(message) {
  message.reply("Try using: score, skip");
}

export async function score(message) {
  const { author, guild } = message;

  try {
    const points = await db.getTriviaScore(guild.id, author.id);
    message.reply(`your score is ${points} pts`);
  } catch (err) {
    message.reply(
      "I'm having trouble communicating with the database, please try again later"
    );
  }
}

// player votes to increase trivia hints
export async function hint(message) {
  const { author, guild } = message;

  try {
    await db.voteIncreaseTriviaHintLevel(guild.id, author.id);

    const voters = await db.getTriviaHintVoteCount(guild.id);

    // minimum of 2 players agree to increase hint level (and reduce points)
    if (voters >= 2) {
      const newHintLevel = await db.increaseTriviaHintLevel(guild.id);
      const trivia = await db.getCurrentTrivia(guild.id);

      message.reply(
        "Hint Level now at " +
        newHintLevel +
        ". Points Awarded reduced to " +
        pointsPerHintLevel(parseInt(newHintLevel))
      );

      message.reply(createTriviaQuestionString(trivia, newHintLevel));
    } else {
      message.reply(
        `Hint requested! Need ${2 - voters} more to increase hint level`
      );
    }
  } catch (err) {
    message.reply(
      "I'm having trouble communicating with the database, please try again later"
    );
  }
}

export async function answer(message, params) {
  const { author, guild } = message;

  try {
    let trivia = await db.getCurrentTrivia(guild.id);

    const answer = {
      content: params.join(" "),
      timestamp: Date.now()
    };

    const resp = answer.content.trim().toUpperCase();
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

      message.reply(`Correct! Your score is now ${score} pts!`);

      trivia = await db.beginNewRound(guild.id);

      message.reply(createTriviaQuestionString(trivia, 0));
    } else if (lev <= 3) {
      message.reply("You are very close!");
    }
  } catch (err) {
    logger.error({ message: err.message, stack: err.stack });
  }
}

export async function question(message) {
  const { guild } = message;

  try {
    const shouldRefreshQuestion = await db.hasTriviaTimedOut(guild.id);

    if (shouldRefreshQuestion) {
      const trivia = await db.beginNewRound(guild.id);
      message.reply("Times Up! New Question");
      message.reply(createTriviaQuestionString(trivia, 0));
    } else {
      const [trivia, hintLevel] = await Promise.all([
        db.getCurrentTrivia(guild.id),
        db.getTriviaHintLevel(guild.id)
      ])

      message.reply(createTriviaQuestionString(trivia, hintLevel));
    }
  } catch (err) {
    logger.error({ message: err.message, stack: err.stack })
    message.reply(
      "I'm having trouble communicating with the database, try again later"
    );
  }
}

export async function skip(message) {
  const { guild, author } = message;

  try {
    const skipCount = await db.voteTriviaSkip(
      guild.id,
      author.id
    );

    if (skipCount >= 2) {
      const newTrivia = await db.beginNewRound(guild.id);

      return message.reply(
        `Trivia skipped! New question: #${newTrivia.id}: ${newTrivia.question}`
      );
    }

    message.reply(
      `Skip requested! Need ${2 - skipCount} more to skip question`
    );
  } catch (err) {
    message.reply(
      "I'm having trouble communicating with the database, try again later"
    );
  }
}

export async function report(message) {
  const { guild } = message;

  try {
    const trivia = await db.reportCurrentTriviaQuestion(guild.id);

    message.reply(`Trivia #${trivia.id} reported`);
  } catch (err) {
    message.reply(
      "I'm having trouble communicating with the database, try again later"
    );
  }
}
