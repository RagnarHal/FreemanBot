import moment from "moment-timezone";
import { getRandomQuote, getQuoteByIndex } from "../services/database";

export default async (message, args = []) => {
  let quote;
  if (args.length) {
    const integerArg = parseInt(args[0]);

    if (isNaN(integerArg)) {
      return message.reply("That's not a valid quote");
    }

    quote = await getQuoteByIndex(integerArg);
  } else {
    quote = await getRandomQuote();
  }

  quote !== null
    ? message.channel.send(
        `#${quote.index}: "${quote.text}" - **${quote.nick}** ${moment(
          quote.timestamp
        ).format("MMM Do YYYY")}`
      )
    : message.reply("I couldn't find that quote...");
};
