import moment from "moment-timezone";
import logger from "../logger";
import { getRandomQuote, getQuoteById } from "../services/database";

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
    // Only log the error, the bot will respond as if it couldn't find a quote
    logger.error("Quote command threw", err);
  }

  quote !== null
    ? message.channel.send(
        `#${quote.quoteId}: "${quote.text}" - **${quote.nick}** ${moment(
          quote.timestamp
        ).format("MMM Do YYYY")}`
      )
    : message.reply("I couldn't find that quote...");
};
