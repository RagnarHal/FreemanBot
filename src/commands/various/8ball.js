import { Command } from "discord.js-commando";
import { hashCode } from "../../utils";

const responses = [
  "It is certain.",
  "It is decidedly so",
  "Without a doubt",
  "Yes definitely",
  "You may rely on it",
  "As I see it, yes",
  "Most likely",
  "Outlook good",
  "Yes",
  "Signs point to yes",
  "Indubitably!",
  "I think so, yeah",
  "Nope",
  "I don't think so, no",
  "If I said yes, I'd be lying",
  "No",
  "Yeah, nah",
  "Over my dead body",
  "Definitely not",
  "Don't count on it",
  "My reply is no",
  "My sources say no",
  "Outlook not so good",
  "Very doubtful"
];

export default class OracleCommand extends Command {
  constructor(client) {
    super(client, {
      name: "8",
      group: "various",
      memberName: "oracle",
      description: "Ask a question, get an answer.",
      examples: ["8 Is BarneyBot cool?"],
      args: [
        {
          key: "question",
          prompt: "What is your question?",
          type: "string"
        }
      ]
    });
  }

  run(msg, args) {
    const responseIndex = Math.abs(hashCode(args.question)) % responses.length;
    return msg.reply(responses[responseIndex]);
  }
}
