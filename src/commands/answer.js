import { getCurrentTrivia, getNewTrivia } from "../services/database";

export default async (message, args = []) => {

  try {

    const trivia = await getCurrentTrivia();

    const answer = {
      content: args.join(" "),
      timestamp: Date.now(),
    };

    const resp = answer.content.toUpperCase();

    if (resp === trivia.answer) {

      const new_trivia = await getNewTrivia();

      message.reply("You are Correct Sir");
      message.reply(`New Question! #${new_trivia.id}: ${new_trivia.question} ->> ${new_trivia.answer}`);

    } else {
      message.reply("You are Wrong Sir");
    }

  } catch (err) {
    message.reply("I couldn't figure out how to get a random trivia question");
  }
};
