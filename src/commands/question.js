import { getCurrentTrivia, hasTriviaTimedout, getNewTrivia } from "../services/database";

export default async (message) => {

  try {

    const req_new = await hasTriviaTimedout();

    if (req_new) {

      const trivia = await getNewTrivia();
      message.reply('Times Up! New Question');
      message.reply(`#${trivia.id}: ${trivia.question}`);

    } else {

      const trivia = await getCurrentTrivia();
      message.reply(`#${trivia.id}: ${trivia.question}`);
    }

  } catch (err) {
    message.reply("I couldn't figure out how to get a random trivia question");
  }
};
