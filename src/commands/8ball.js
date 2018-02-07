import { hashCode } from "../utils";

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

export default (message, args = []) => {
  if (!args.length) {
    return;
  }

  const question = args.join(" ");
  const answerIndex = Math.abs(hashCode(question)) % responses.length;

  message.reply(responses[answerIndex]);
};
