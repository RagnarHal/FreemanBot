import * as db from "../services/database";
import { levenshtein } from "../utils";
import logger from "../logger";
import config from "../config.json";

function parseArgs(content) {
  return content
    .trim()
    .split(" ")
    .slice(1);
}

function parseCommand(content) {
  const args = parseArgs(content);

  return args[0] || "help";
}

function parseParams(content) {
  const args = parseArgs(content);

  return args.slice(1);
}

async function score(message) {
  const points = await db.getTriviaScore(message.author.id);
  message.reply(`your score is ${points} pts`);
}


// 3x performance improvement using one command
function resetVotingSkipAndHints() {
  return Promise.all([db.resetTriviaHintVoteCount(), db.resetTriviaSkip(), db.resetTriviaHintLevel()]);
}

async function skip(message) {
  const skipCount = await db.voteTriviaSkip(
    message.author.id,
    message.author.username
  );

  if (skipCount >= 2) {

    resetVotingSkipAndHints();

    const newTrivia = await db.getNewTrivia();

    return message.reply(
      `Trivia skipped! New question: #${newTrivia.id}: ${newTrivia.question}`
    );
  }

  message.reply(`Skip requested! Need ${2 - skipCount} more to skip question`);
}

async function mark(message) {
  const trivia = await db.getCurrentTrivia();

  await db.markTriviaNeedingHints(trivia.id, 1);
  message.reply(`Trivia #${trivia.id} marked for revision`);
}

async function hints(message, params) {
  if (params.length > 1) {
    const id = parseInt(params[0]);
    const newHints = params.slice(1).join(" ");

    await db.setTriviaHints(id, newHints);
    message.reply("Added Hints!");
  } else {
    message.reply("Hints missing params");
  }
}

function hintShow(str, lvl) {

  let count = 0;
  let endstr = "";

  if (lvl <= 0) {
    return "";
  }

  const level = lvl - 1;


  for (let i = 0; i < str.length; i++) {
    const c = str.charAt(i);
    const upper = c.toUpperCase();

    if ((upper >= "A" && upper <= "Z") || (upper >= "0" && upper <= "9")) {
      if (count >= level) {
        endstr += ".";
      } else {
        count += 1;
        endstr += c;
      }

    } else {
      count = 0;
      endstr += c;
    }
  }
  return endstr;


}

function createTriviaQuestionString(trivia, level) {

  let resp = "";

  if (trivia.hints === "") {
    resp = `#${trivia.id}: ${trivia.question}`;
  } else {
    resp = `#${trivia.id}: ${trivia.question} [${trivia.hints}]`;
  }

  if (level > 0) {
    resp += "\nHint: " + hintShow(trivia.answer, level);
  }

  return resp;
}

function pointsPerHintLevel(hint_level) {
  if (hint_level === 0) return 5;
  if (hint_level === 1) return 3;
  if (hint_level === 2) return 2;

  return 1;
}

async function question(message) {
  try {
    const req_new = await db.hasTriviaTimedout();

    if (req_new) {

      resetVotingSkipAndHints();

      const trivia = await db.getNewTrivia();
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

async function answer(message, params) {
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

      const points = pointsPerHintLevel(hint_level);

      // TODO: Could awardTriviaPoints not return the new amount of points instead of having to call getTriviaScore?
      await db.awardTriviaPoints(message.author.id, message.author.username, points);
      const score = await db.getTriviaScore(message.author.id);

      resetVotingSkipAndHints();

      trivia = await db.getNewTrivia();

      message.reply(`Correct! Your score is now ${score} pts!`);
      message.reply(createTriviaQuestionString(trivia, 0)); //new trivia always resets the hint level

    } else if (lev <= 3) {
      message.reply("You are very close!");
    }
  } catch (err) {
    logger.error(`Trivia answer: `, { message: err.message });
    message.reply("I couldn't figure out how to get a random trivia question");
  }
}

// player votes to increase trivia hints
async function hint(message) {
  await db.voteIncreaseTriviaHintLevel(message.author.id);

  const voters = await db.getTriviaHintVoteCount();

  // minimum of 2 players agree to increase hint level
  if (voters >= 2) {
    await db.resetTriviaHintVoteCount();
    await db.resetTriviaSkip();
    await db.increaseTriviaHintLevel();

    const trivia = await db.getCurrentTrivia();
    const hint_level = await db.getTriviaHintLevel();

    message.reply("Hint Level now at " + hint_level + ". Points Awarded reduced to " + pointsPerHintLevel(parseInt(hint_level)));

    message.reply(createTriviaQuestionString(trivia, hint_level));

  } else {
    message.reply(`Hint requested! Need ${2 - voters} more to increase hint level`);
  }
}

async function help(message) {
  message.reply("Try using: score, skip");
}

const commands = {
  score,
  skip,
  mark,
  hints,
  hint,
  question,
  answer,
  help
};

function handleCommand(command, message, params) {
  const handler = commands[command];
  typeof handler === "function"
    ? handler(message, params)
    : message.reply(`${command} is not a valid Trivia command`);
}

export default message => {
  const commandTrigger = `${config.prefix}trivia`;

  const hasCommandTrigger = message.content.indexOf(commandTrigger) === 0;
  const cmd = hasCommandTrigger ? parseCommand(message.content) : "answer";

  const params = hasCommandTrigger
    ? parseParams(message.content)
    : message.content.split(" ");

  handleCommand(cmd, message, params);
};
