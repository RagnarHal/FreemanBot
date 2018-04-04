import logger from "../../logger";
import database from "./database";

export async function getRandomQuote() {
  try {
    const res = await database
      .getClient()
      .query("SELECT * FROM quotes ORDER BY RANDOM() LIMIT 1");

    logger.info("Random quote successfully fetched", res.rows[0]);

    return res.rows[0];
  } catch (err) {
    logger.error(`getRandomQuote error`, { error: err.message });
    throw err;
  }
}

export async function getQuoteById(id) {
  try {
    const res = await database
      .getClient()
      .query("SELECT * FROM quotes WHERE id = $1;", [id]);

    if (!res.rows.length) {
      return null;
    }
    logger.info("Requested quote successfully fetched", res.rows[0]);
    return res.rows[0];
  } catch (err) {
    logger.error(`getQuoteById error. Requested quote #${id}`, err);
    throw err;
  }
}

export async function addQuote({ author, content, timestamp, valid }) {
  try {
    const res = await database
      .getClient()
      .query(
        "INSERT INTO quotes (author, content, timestamp, valid) VALUES ($1, $2, $3, $4) RETURNING *",
        [author, content, timestamp, valid]
      );
    return res.rows[0].id;
  } catch (err) {
    logger.error("addQuote error", err);
    throw err;
  }
}
