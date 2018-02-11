import { getCurrentTrivia, getNewTrivia, awardTriviaPoints, getTriviaScore, resetTriviaSkip } from "../services/database";

export default async (message, args = []) => {

  try {

    const trivia = await getCurrentTrivia();

    const answer = {
      content: args.join(" "),
      timestamp: Date.now(),
    };

    const resp = answer.content.toUpperCase();

    if (resp === trivia.answer) {

      await awardTriviaPoints(message.author.id, message.author.username, 1);

      const score = await getTriviaScore(message.author.id);

      resetTriviaSkip();

      const ntrivia = await getNewTrivia();

      message.reply("You are Correct Sir. Your score is now " + String(score) + "pts");
      message.reply("New Question!");
      if (trivia.hints === "") {
        message.reply(`#${ntrivia.id}: ${ntrivia.question}`);
      } else {
        message.reply(`#${ntrivia.id}: ${ntrivia.question} [${ntrivia.hints}]`);
      }

    } else if (resp.indexOf(trivia.answer) !== -1 || trivia.answer.indexOf(resp) !== -1) {
      message.reply("You are Very Close Sir!");
    }
    else {
      message.reply("You are Wrong Sir!");
    }

  } catch (err) {
    message.reply("I couldn't figure out how to get a random trivia question");
  }
};
