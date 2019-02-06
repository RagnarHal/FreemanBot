import { addQuote } from "../services/quotes";

export default async (message, args = []) => {
  if (!args.length) {
    return;
  }

  const quote = {
    author: message.author.username,
    content: args.join(" "),
    timestamp: Date.now(),
    valid: true
  };

  try {
    const id = await addQuote(quote);
    message.reply(`Quote #${id} added!`);
  } catch (err) {
    message.reply("I couldn't add that quote for some reason, try again.");
  }
};
