import axios from "axios";
import logger from "../logger";
import env from "../env";

const { baseUrl, timeout, appId, appKey } = env.oxford;

const httpClient = axios.create({
  baseURL: baseUrl,
  timeout,
  headers: {
    app_id: appId,
    app_key: appKey
  }
});

export function getEntries(word) {
  return httpClient
    .get(`/entries/en/${word}`)
    .then(response => response.data.results)
    .catch(err => {
      logger.warn(
        "Oxford server responded with non-2XX status",
        err.response.status
      );
      return null;
    });
}

export async function lookupWord(word) {
  const results = await getEntries(word);

  const lexicalEntries = results !== null ? results[0].lexicalEntries : [];

  return {
    lexicalEntries
  };
}
