import { Command } from "discord.js-commando";
import moment from "moment";
import { topHeadlines } from "../../services/news";
import { maxBy, normalize } from "../../utils";

const MIN_WEIGHT = 2;
const keywordWeights = {
  mass: 10,
  victims: 7,
  mosque: 7,
  church: 7,
  shooting: 3,
  multiple: 3,
  deaths: 3,
  square: 3,
  bridge: 3,
  shooters: 2,
  shooter: 2,
  unconfirmed: 0.5,
  victim: 0.5
};

export default class AnotherDay extends Command {
  constructor(client) {
    super(client, {
      name: "anotherday",
      group: "various",
      memberName: "anotherday",
      description: "Another day, another..."
    });
  }

  async run(msg) {
    const yesterday = moment()
      .subtract(1, "days")
      .format("DD-MM-YYYY");

    const response = await topHeadlines({
      q: "shooting",
      from: yesterday
    });

    if (!response) {
      msg.reply("I'm having trouble reaching my news sources, try again later");
      return;
    }

    if (!response.articles.length) {
      msg.reply("No new shootings found! Hooray! 😎");
      return;
    }

    const article = maxBy(response.articles, weighArticle);

    if (weighArticle(article) < MIN_WEIGHT) {
      msg.reply("No new shootings found! Hooray! 😎");
      return;
    }

    await msg.say("...another shooting 😦");
    const {
      title,
      description,
      author,
      publishedAt,
      url,
      urlToImage
    } = article;

    msg.embed({
      title,
      description,
      url,
      timestamp: publishedAt,
      author: { name: author },
      thumbnail: { url: urlToImage },
      footer: {
        icon_url: "https://newsapi.org/favicon-16x16.png",
        text: "Powered by NewsAPI"
      }
    });
  }
}

function weighArticle({ title, publishedAt }) {
  let weight = 1;
  for (const keyword in keywordWeights) {
    if (title.toLowerCase().includes(keyword)) {
      weight *= keywordWeights[keyword];
    }
  }

  const now = moment();
  const published = moment(publishedAt);

  // Articles older than 24 hours are weighted as 0 and brand new articles are weighted as 1
  const hoursSincePublish = Math.floor(
    moment.duration(now.diff(published)).asHours()
  );
  const oldnessWeight =
    hoursSincePublish > 24 ? 0 : 1 - normalize(hoursSincePublish, 0, 24);

  weight *= oldnessWeight;

  return weight;
}
