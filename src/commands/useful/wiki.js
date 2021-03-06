import { Command } from "discord.js-commando";
import axios from "axios";
import { stripIndents } from "common-tags";
import logger from "../../logger";

const BASE_URL = "https://en.wikipedia.org/api/rest_v1/page/summary";

export default class Wiki extends Command {
  constructor(client) {
    super(client, {
      name: "wiki",
      group: "useful",
      memberName: "wiki",
      description: "Look something up on Wikipedia",
      examples: ["wiki foobar"],
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
    const result = await doLookup(query);

    if (!result) {
      msg.reply(`Sorry, I couldn't find an entry for '${query}'`);
      return;
    }

    msg.channel.send(createFormattedResponse(result));
  }
}

function createFormattedResponse(result) {
  if (result.type === "disambiguation") {
    return stripIndents`
      **${result.title}**

      ${result.title} may have several different meanings.

      Please see ${result.url} for more information.
    `;
  }

  let str = `**${result.title}**`;

  if (result.description) {
    str += `\n*${result.description}*`;
  }

  str += "\n\n";
  str += stripIndents`
    ${result.summary}

    Find out more at ${result.url}.
  `;

  return str;
}

async function doLookup(phrase) {
  try {
    const { data } = await axios.get(`${BASE_URL}/${phrase}`);

    return {
      type: data.type,
      summary: data.extract,
      url: data.content_urls.desktop.page,
      mobileUrl: data.content_urls.mobile.page,
      title: data.title,
      description: data.description
    };
  } catch (err) {
    if (err.response && err.response.status === 404) {
      return null;
    }

    logger.error(err);
    throw err;
  }
}
