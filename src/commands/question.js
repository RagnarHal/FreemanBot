import { getRandomTrivia } from "../services/database";

export default async (message) => {

  try {
    const trivia = await getRandomTrivia();

    message.reply(`${trivia.question} ->> ${trivia.answer}`);
  } catch (err) {
    message.reply("I couldn't figure out how to get a random trivia question");
  }
};
