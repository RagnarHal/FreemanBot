import moment from "moment-timezone";
import { getRandomQuote, getQuoteById } from "../services/quotes";

export default async (message, args = []) => {
  let quote = null;

  try {
    if (args.length) {
      const integerArg = parseInt(args[0]);

      if (isNaN(integerArg)) {
        return message.reply("That's not a valid quote");
      }

      quote = await getQuoteById(integerArg);
    } else {
      quote = await getRandomQuote();
    }
  } catch (err) {
    return message.reply(
      "Something went wrong when I tried to get the quote. Try again or another quote!"
    );
  }

  quote !== null
    ? message.channel.send(
      `#${quote.id}: "${quote.content}" - **${quote.author}** ${moment(
        parseInt(quote.timestamp)
      ).format("MMM Do YYYY")}`
    )
    : message.reply("I couldn't find that quote...");
};
