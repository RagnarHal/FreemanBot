import { lookupWord } from "../services/dictionary";
import { getObjectPath } from "../utils";

const createLine = (label, text) => (text ? `\n**${label}:** ${text}` : "");
const createFormattedEntry = ({ lexicalCategory, entries }) => {
  const definition = getObjectPath(["senses", 0, "definitions", 0], entries[0]);
  const etymology = getObjectPath(["etymologies", 0], entries[0]);
  const example = getObjectPath(
    ["senses", 0, "examples", 0, "text"],
    entries[0]
  );

  return {
    lexicalCategory,
    definition,
    example,
    etymology
  };
};

const createDefinitionText = ({
  lexicalCategory,
  definition,
  example,
  etymology
}) => {
  const lines = [
    createLine("Definition", definition),
    createLine("Etymology", etymology),
    createLine("Example", example)
  ];

  return `__${lexicalCategory}__\n${lines.join("")}`;
};

const createFormattedResponse = (query, results) => {
  const entryCount = results.length;
  const definitions = results.length > 1 ? "definitions" : "definition";

  const header = `Found ${entryCount} ${definitions} for **__${query}__**:`;
  const list = results.map(createDefinitionText).join("\n\n");

  return `${header}\n\n${list}`;
};

export default async (message, args = []) => {
  if (!args.length) {
    return message.reply("Specify which word you want to look up");
  }

  const query = args.join(" ");

  const { lexicalEntries } = await lookupWord(query);

  if (!lexicalEntries.length) {
    return message.reply(`I couldn't find any definitions for "${query}"`);
  }

  const normalizedResults = lexicalEntries.map(createFormattedEntry);
  message.channel.send(createFormattedResponse(query, normalizedResults));
};
