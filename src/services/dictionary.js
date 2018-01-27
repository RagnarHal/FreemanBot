if (
  !process.env.OXFORD_APP_ID ||
  !process.env.OXFORD_APP_KEY ||
  !process.env.OXFORD_BASE_URL
) {
  throw new Error(
    "App ID or App Key missing for Oxford Dictionary API (OXFORD_APP_ID, OXFORD_APP_KEY)"
  );
}

import axios from "axios";
import logger from "../logger";

const httpClient = axios.create({
  baseURL: process.env.OXFORD_BASE_URL,
  timeout: 5000,
  headers: {
    app_id: process.env.OXFORD_APP_ID,
    app_key: process.env.OXFORD_APP_KEY
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
