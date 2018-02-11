import { getTriviaScore, voteTriviaSkip, resetTriviaSkip, getNewTrivia } from "../services/database";

export default async (message, args = []) => {
  if (!args.length) {
    return;
  }

  const cmd = args.join(" ");

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


    } else {
      message.reply("Try using: score, skip");
    }
  } catch (err) {
    message.reply("Congratulations, you broke trivia command!");
    throw err;
  }
};
