if (!process.env.DATABASE_URL) {
  throw new Error("DATABASE_URL environment variable missing");
}

import { Client } from "pg";
import logger from "../logger";

let client;

function getClient() {
  if (!client) {
    client = new Client({
      connectionString: process.env.DATABASE_URL,
      ssl: true
    });
  }

  return client;
}

export async function getRandomQuote() {
  try {
    const res = await getClient().query(
      "SELECT * FROM quotes ORDER BY RANDOM() LIMIT 1"
    );

    logger.info("Random quote successfully fetched", res.rows[0]);

    return res.rows[0];
  } catch (err) {
    logger.error(`getRandomQuote error`, err);
    throw err;
  }
}

export async function getQuoteById(id) {
  try {
    const res = await getClient().query("SELECT * FROM quotes WHERE id = $1;", [
      id
    ]);

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
    const res = await getClient().query(
      "INSERT INTO quotes (author, content, timestamp, valid) VALUES ($1, $2, $3, $4) RETURNING *",
      [author, content, timestamp, valid]
    );
    return res.rows[0].id;
  } catch (err) {
    logger.error("addQuote error", err);
    throw err;
  }
}

export async function init() {
  try {
    await getClient().connect();
    logger.info("Connected to Postgres database!");
  } catch (err) {
    logger.error("Error connecting to database", err);
  }
}

export function teardown() {
  return getClient()
    .end()
    .catch(err => logger.error("Error disconnecting from database", err));
}

// export async function getTriviaById(id) {
//   try {
//     const res = await getClient().query(
//       "SELECT id, question, answer from trivia_questions_and_answers WHERE ID=$1",
//       [id]
//     );
//     return res.rows[0];
//   } catch (err) {
//     logger.error("getRandomQuestion error", err);
//     throw err;
//   }
// }

export async function hasTriviaTimedout() {
  try {
    const res = await getClient().query(
      "SELECT * FROM status WHERE vname='trivia_time'",
    );

    const trivia_time = parseInt(res.rows[0].vint);
    const current_time = parseInt((new Date).getTime());

    //if too much time has passed 
    return ((current_time - trivia_time) > 120 * 1000);

  } catch (err) {
    logger.error("hasTriviaTimedout error", err);
    throw err;
  }
}

export async function getCurrentTrivia() {
  try {
    const res0 = await getClient().query(
      "SELECT * from status WHERE vname='trivia_key'",
    );

    const trivia_key = parseInt(res0.rows[0].vint);

    const res = await getClient().query(
      "SELECT id, question, answer from trivia_questions_and_answers WHERE id = $1;",
      [trivia_key]
    );

    return res.rows[0];

  } catch (err) {
    logger.error("getCurrentTrivia error", err);
    throw err;
  }
}

export async function getNewTrivia() {
  try {
    const res = await getClient().query(
      "SELECT id, question, answer FROM trivia_questions_and_answers ORDER BY RANDOM() LIMIT 1",
    );

    const trivia_key = parseInt(res.rows[0].id);
    const trivia_time = parseInt((new Date).getTime());

    await getClient().query(
      "UPDATE status SET vint=$1 WHERE vname='trivia_key'", [trivia_key]
    );

    await getClient().query(
      "UPDATE status SET vint=$1 WHERE vname='trivia_time'", [trivia_time]
    );

    return res.rows[0];

  } catch (err) {
    logger.error("getNewTrivia error", err);
    throw err;
  }
}

