import * as db from "../services/database";
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

async function skip(message) {
  const skipCount = await db.voteTriviaSkip(
    message.author.id,
    message.author.username
  );

  if (skipCount >= 2) {
    await db.resetTriviaSkip();

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

async function question(message) {
  try {
    const req_new = await db.hasTriviaTimedout();

    if (req_new) {
      const trivia = await db.getNewTrivia();
      message.reply("Times Up! New Question");
      if (trivia.hints === "") {
        message.reply(`#${trivia.id}: ${trivia.question}`);
      } else {
        message.reply(`#${trivia.id}: ${trivia.question} [${trivia.hints}]`);
      }
    } else {
      const trivia = await db.getCurrentTrivia();
      if (trivia.hints === "") {
        message.reply(`#${trivia.id}: ${trivia.question}`);
      } else {
        message.reply(`#${trivia.id}: ${trivia.question} [${trivia.hints}]`);
      }
    }
  } catch (err) {
    message.reply("I couldn't figure out how to get a random trivia question");
  }
}

async function answer(message, params) {
  try {
    const trivia = await db.getCurrentTrivia();

    const answer = {
      content: params.join(" "),
      timestamp: Date.now()
    };

    const resp = answer.content.toUpperCase();

    if (resp === trivia.answer) {
      await db.awardTriviaPoints(message.author.id, message.author.username, 1);

      const score = await db.getTriviaScore(message.author.id);

      db.resetTriviaSkip();

      const ntrivia = await db.getNewTrivia();

      message.reply(
        "You are Correct Sir. Your score is now " + String(score) + "pts"
      );
      message.reply("New Question!");
      if (trivia.hints === "") {
        message.reply(`#${ntrivia.id}: ${ntrivia.question}`);
      } else {
        message.reply(`#${ntrivia.id}: ${ntrivia.question} [${ntrivia.hints}]`);
      }
    } else if (
      resp.indexOf(trivia.answer) !== -1 ||
      trivia.answer.indexOf(resp) !== -1
    ) {
      message.reply("You are Very Close Sir!");
    } else {
      message.reply("You are Wrong Sir!");
    }
  } catch (err) {
    message.reply("I couldn't figure out how to get a random trivia question");
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
