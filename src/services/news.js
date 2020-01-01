import axios from "axios";
import logger from "../logger";
import env from "../env";

export async function topHeadlines({ q, category, from }) {
  try {
    const res = await createClient().get("/top-headlines", {
      params: { q, category, from, language: "en" }
    });
    return res.data;
  } catch (err) {
    logger.info("Words API returned non-2xx code");
    return null;
  }
}

function createClient() {
  return axios.create({
    baseURL: env.news.baseUrl,
    headers: {
      "X-Api-Key": env.news.key
    }
  });
}

export default topHeadlines;
