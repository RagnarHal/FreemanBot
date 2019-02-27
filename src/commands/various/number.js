import axios from "axios";
import { Command } from "discord.js-commando";
import logger from "./../../logger";
import { isInteger, getRandomInteger } from "../../utils";

const NUMBERS_API_URL = "http://numbersapi.com";
const types = ["math", "trivia", "year"];

export default class NumberCommand extends Command {
  constructor(client) {
    super(client, {
      name: "number",
      group: "various",
      memberName: "number",
      description: "Get an interesting fact about a number",
      examples: ["number 42"],
      args: [
        {
          key: "number",
          prompt: "Which number would you like to know about?",
          type: "string"
        }
      ]
    });
  }

  async run(msg, { number }) {
    if (!isInteger(number) || number < 0) {
      msg.reply("I can only find facts for positive integers! Try again.");
      return;
    }

    const factNotFoundStr = "I was unable to find a fact for that number.";
    const numberType = types[getRandomInteger(types.length)];
    const url = `${NUMBERS_API_URL}/${parseInt(number, 10)}/${numberType}/`;

    try {
      const { data } = await axios.get(url);

      if (isNotFoundResponse(data)) {
        msg.reply(factNotFoundStr);
        return;
      }

      msg.reply(data);
    } catch (err) {
      logger.error("Error " + err.message);
      msg.reply(factNotFoundStr);
    }
  }
}

function isNotFoundResponse(responseString) {
  return ~responseString.indexOf("missing a fact");
}
