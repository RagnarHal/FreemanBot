import axios from "axios";
import logger from "../logger";
import env from "../env";

export async function getWord(word) {
  try {
    const res = await createClient().get(`/words/${word}`);
    return res.data;
  } catch (err) {
    logger.info("Words API returned non-2xx code");
    return null;
  }
}

function createClient() {
  return axios.create({
    baseURL: env.words.baseUrl,
    headers: {
      "X-Mashape-Key": env.words.key
    }
  });
}

export default getWord;
