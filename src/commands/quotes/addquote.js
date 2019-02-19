import { Command } from "discord.js-commando";
import { addQuote } from "../../services/quotes";

export default class AddQuote extends Command {
  constructor(client) {
    super(client, {
      name: "addquote",
      group: "quotes",
      aliases: ["231"],
      memberName: "addquote",
      description: "Add a new quote to the HLF Quote Database®",
      args: [
        {
          key: "quote",
          prompt: "What wise words do you want to immortalize?",
          type: "string"
        }
      ]
    });
  }

  async run(msg, { quote }) {
    try {
      const id = await addQuote({
        author: msg.author.username,
        content: quote,
        timestamp: Date.now(),
        valid: true
      });
      msg.reply(`Quote #${id} added!`);
    } catch (err) {
      msg.reply("I couldn't add that quote for some reason, try again.");
    }
  }
}
