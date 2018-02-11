import { getTriviaScore, voteTriviaSkip, resetTriviaSkip, getCurrentTrivia, getNewTrivia, markTriviaNeedingHints, setTriviaHints } from "../services/database";

export default async (message, args = []) => {
  if (!args.length) {
    return;
  }
  let cmd = "";
  let params = [];

  if (args.length > 1) {
    cmd = args[0];
    params = args.slice(1);

  } else {
    cmd = args.join(" ");
  }

  try {

    if (cmd === "score") {
      const score = await getTriviaScore(message.author.id);
      message.reply("Your' score is " + score + "pts");

    } else if (cmd === "skip") {

      const skip_count = await voteTriviaSkip(message.author.id, message.author.username);

      if (skip_count >= 2) {

        await resetTriviaSkip();

        const new_trivia = await getNewTrivia();

        message.reply("Trivia Skipped!");
        message.reply(`New Question! #${new_trivia.id}: ${new_trivia.question}`);
      } else {
        message.reply("Skip Requested! Need " + (2 - skip_count) + " more to skip question");
      }
    } else if (cmd === "hints") {

      if (params.length > 1) {
        const id = parseInt(params[0]);
        const newHints = params.slice(1).join(" ");

        await setTriviaHints(id, newHints);
        message.reply("Added Hints!");

      } else {
        message.reply("Hints missing params");
      }

    } else if (cmd === "mark") {
      const trivia = await getCurrentTrivia();

      await markTriviaNeedingHints(trivia.id, 1);
      message.reply("Trivia #" + trivia.id + " marked for revision");

    } else {
      message.reply("Try using: score, skip");
    }
  } catch (err) {
    message.reply("Congratulations, you broke trivia command!");
    throw err;
  }
};
