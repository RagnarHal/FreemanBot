import { Command } from "discord.js-commando";
import { getWord } from "../../services/words";

const MAX_RESULTS_COUNT = 3;

const createDefinitionText = ({
  definition,
  partOfSpeech,
  synonyms,
  examples
}) => {
  const lines = [`**Definition:** ${definition}`];

  if (synonyms && synonyms.length) {
    lines.push(`**Synonyms:**`);
    lines.push(...synonyms.map(s => `- ${s}`));
  }

  if (examples && examples.length) {
    lines.push(`**Examples:**`);
    lines.push(...examples.map(e => `- ${e}`));
  }

  return `__${partOfSpeech}__\n${lines.join("\n")}`;
};

const createResponse = results => {
  const list = results.map(createDefinitionText).join("\n\n");

  return list;
};

export default class DictionaryLookup extends Command {
  constructor(client) {
    super(client, {
      name: "lookup",
      group: "useful",
      memberName: "lookup",
      description: "Look up a word or phrase in a Dictionary",
      examples: ["lookup jesus"],
      args: [
        {
          key: "query",
          prompt: "What do you want to look up?",
          type: "string"
        }
      ]
    });
  }

  async run(msg, args) {
    const { query } = args;
    const result = await getWord(query);

    if (!result) {
      return msg.reply(`I couldn't find any definitions for "${query}"`);
    }

    const { word, results } = result;

    const definitions = results.length > 1 ? "definitions" : "definition";
    let headerText = `Found ${results.length} ${definitions} for **__${word}__**:`;

    if (results.length > MAX_RESULTS_COUNT) {
      headerText += ` (Only first ${MAX_RESULTS_COUNT} are shown)`;
    }

    msg.channel.send(headerText);
    msg.channel.send(createResponse(results.slice(0, MAX_RESULTS_COUNT)));
  }
}
