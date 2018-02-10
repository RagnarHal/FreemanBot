import { getTriviaScore } from "../services/database";

export default async (message, args = []) => {
  if (!args.length) {
    return;
  }

  const cmd = args.join(" ");

  try {

    if (cmd === "score") {
      const score = await getTriviaScore(message.author.id);
      message.reply("Your' score is " + score + "pts");
    } else {
      message.reply("Try using: score");
    }
  } catch (err) {
    message.reply("I couldn't add that quote for some reason, try again.");
  }
};
