import { Command } from "discord.js-commando";
import moment from "moment-timezone";
import { getRandomQuote, getQuoteById } from "../../services/quotes";

export default class Quote extends Command {
  constructor(client) {
    super(client, {
      name: "quote",
      group: "quotes",
      memberName: "quote",
      description: "Get a quote from the HLF Quote Database®",
      args: [
        {
          key: "quoteId",
          prompt: "Which quote do you want to see? (None for random)",
          type: "string",
          default: ""
        }
      ]
    });
  }

  async run(msg, { quoteId }) {
    let quote = null;

    try {
      if (!quoteId) {
        quote = await getRandomQuote();
      } else {
        const integerArg = parseInt(quoteId);

        if (isNaN(integerArg)) {
          return msg.reply("That's not a valid quote");
        }

        quote = await getQuoteById(integerArg);
      }
    } catch (err) {
      return msg.reply(
        "Something went wrong when I tried to get the quote. Try again or another quote!"
      );
    }

    quote !== null
      ? msg.channel.send(
          `#${quote.id}: "${quote.content}" - **${quote.author}** ${moment(
            parseInt(quote.timestamp)
          ).format("MMM Do YYYY")}`
        )
      : msg.reply("I couldn't find that quote...");
  }
}
