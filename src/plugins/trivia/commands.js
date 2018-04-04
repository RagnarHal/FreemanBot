import * as db from "../../services/database";
import { levenshtein } from "../../utils";
import logger from "../../logger";
import { pointsPerHintLevel, createTriviaQuestionString } from "./helpers";

export async function help(message) {
  message.reply("Try using: score, skip");
}

export async function score(message) {
  const points = await db.getTriviaScore(message.author.id);
  message.reply(`your score is ${points} pts`);
}

// player votes to increase trivia hints
export async function hint(message) {
  await db.voteIncreaseTriviaHintLevel(message.author.id);

  const voters = await db.getTriviaHintVoteCount();

  // minimum of 1 players agree to increase hint level (and reduce points)
  if (voters >= 1) {
    await db.resetTriviaHintVoteCount();
    await db.resetTriviaSkip();
    await db.increaseTriviaHintLevel();

    const trivia = await db.getCurrentTrivia();
    const hint_level = await db.getTriviaHintLevel();

    message.reply(
      "Hint Level now at " +
        hint_level +
        ". Points Awarded reduced to " +
        pointsPerHintLevel(parseInt(hint_level))
    );

    message.reply(createTriviaQuestionString(trivia, hint_level));
  } else {
    message.reply(
      `Hint requested! Need ${2 - voters} more to increase hint level`
    );
  }
}

export async function answer(message, params) {
  try {
    let trivia = await db.getCurrentTrivia();

    const answer = {
      content: params.join(" "),
      timestamp: Date.now()
    };

    const resp = answer.content.toUpperCase();

    const lev = levenshtein(resp, trivia.answer.toUpperCase());
    if (lev === 0) {
      const hint_level = await db.getTriviaHintLevel();

      const points = pointsPerHintLevel(parseInt(hint_level));

      const score = await db.awardTriviaPoints(
        message.author.id,
        message.author.username,
        points
      );

      message.reply(`Correct! Your score is now ${score} pts!`);

      trivia = await db.beginNewRound();

      message.reply(createTriviaQuestionString(trivia, 0));
    } else if (lev <= 3) {
      message.reply("You are very close!");
    }
  } catch (err) {
    logger.error(`Trivia answer: `, { message: err.message });
    message.reply("I couldn't figure out how to get a random trivia question");
  }
}

export async function question(message) {
  try {
    const req_new = await db.hasTriviaTimedout();

    if (req_new) {
      const trivia = await db.beginNewRound();
      const hint_level = await db.getTriviaHintLevel();
      message.reply("Times Up! New Question");
      message.reply(createTriviaQuestionString(trivia, hint_level));
    } else {
      const trivia = await db.getCurrentTrivia();
      const hint_level = await db.getTriviaHintLevel();
      message.reply(createTriviaQuestionString(trivia, hint_level));
    }
  } catch (err) {
    message.reply("I couldn't figure out how to get a random trivia question");
  }
}

export async function skip(message) {
  const skipCount = await db.voteTriviaSkip(
    message.author.id,
    message.author.username
  );

  if (skipCount >= 2) {
    const newTrivia = await db.beginNewRound();

    return message.reply(
      `Trivia skipped! New question: #${newTrivia.id}: ${newTrivia.question}`
    );
  }

  message.reply(`Skip requested! Need ${2 - skipCount} more to skip question`);
}

export async function hints(message, params) {
  if (params.length > 1) {
    const id = parseInt(params[0]);
    const newHints = params.slice(1).join(" ");

    await db.setTriviaHints(id, newHints);
    message.reply("Added Hints!");
  } else {
    message.reply("Hints missing params");
  }
}

export async function mark(message) {
  const trivia = await db.getCurrentTrivia();

  await db.markTriviaNeedingHints(trivia.id, 1);
  message.reply(`Trivia #${trivia.id} marked for revision`);
}
