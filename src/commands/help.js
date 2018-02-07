import logger from "../logger";
import config from "../config.json";

const commands = [
  {
    command: "help",
    description: "Show this help message in a private message"
  },
  {
    command: "ping",
    description: "I will reply with Pong! if I heard you"
  },
  {
    command: "time <location>",
    description:
      "I will tell you the time and date at a particular location in the world. Try a city, an address or a country"
  },
  {
    command: "say <text>",
    description: "Put words in my mouth"
  },
  {
    command: "roll <n>",
    description:
      "I'll roll an n-sided die. I'll roll a 100-sided die if no argument is specified"
  },
  {
    command: "hug",
    description: "I'll give you a brotherly hug"
  },
  {
    command: "8 <text>",
    description: "I'll answer any yes or no question you can think of"
  },
  {
    command: "quote <n>",
    description:
      "I'll fetch a quote from the HLFallout quote database. If no quote is specified, I'll get a random one"
  },
  {
    command: "addquote <text>",
    description: "Add a quote of your own to the HLFallout quote database"
  },
  {
    command: "lookup <text>",
    description:
      "Look up a word or an expression in the Oxford English Dictionary"
  }
];

export default message => {
  message
    .delete()
    .catch(() =>
      logger.warn("say: Unable to delete message, do I have permission?")
    );
  const msg = `Hi, I'm FreemanBot! Here are my available commands:

${commands
    .map(c => `__**${config.prefix}${c.command}**__\n${c.description}`)
    .join("\n\n")}

Other stuff I can do:

__**Automatic temperature conversion**__
If I see someone mention what looks like a temperature, like 21°C, or 56F, I'll convert it to the other!

__**Fixing tables**__
If someone gets angry and flips a table (╯°□°）╯︵ ┻━┻, I'll put it back.
`;

  message.author.send(msg);
};
