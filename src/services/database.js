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
      ssl: process.env.NODE_ENV === "production"
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

export async function hasTriviaTimedout() {
  try {
    const res = await getClient().query(
      "SELECT * FROM status WHERE vname='trivia_time'"
    );

    const trivia_time = parseInt(res.rows[0].vint);
    const current_time = parseInt(new Date().getTime());

    //if too much time has passed
    return current_time - trivia_time > 120 * 1000;
  } catch (err) {
    logger.error("hasTriviaTimedout error", err);
    throw err;
  }
}

export async function getCurrentTrivia() {
  try {
    const res0 = await getClient().query(
      "SELECT * from status WHERE vname='trivia_key'"
    );

    const trivia_key = parseInt(res0.rows[0].vint);

    const res = await getClient().query(
      "SELECT * from trivia_questions_and_answers WHERE id = $1;",
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
      "SELECT * FROM trivia_questions_and_answers ORDER BY RANDOM() LIMIT 1"
    );

    const trivia_key = parseInt(res.rows[0].id);
    const trivia_time = parseInt(new Date().getTime());

    await getClient().query(
      "UPDATE status SET vint=$1 WHERE vname='trivia_key'",
      [trivia_key]
    );

    await getClient().query(
      "UPDATE status SET vint=$1 WHERE vname='trivia_time'",
      [trivia_time]
    );

    return res.rows[0];
  } catch (err) {
    logger.error("getNewTrivia error", err);
    throw err;
  }
}

export async function awardTriviaPoints(id, name, points) {
  try {
    const sid = String(id);

    const res = await getClient().query(
      "SELECT * FROM trivia_scores WHERE id=$1",
      [sid]
    );

    if (res.rows.length > 0) {
      await getClient().query(
        "UPDATE trivia_scores SET nick=$2, score=score+$3 WHERE id=$1",
        [sid, name, points]
      );
    } else {
      await getClient().query(
        "INSERT INTO trivia_scores (id, nick, score) VALUES ($1, $2, $3)",
        [sid, name, points]
      );
    }
  } catch (err) {
    logger.error("awardTriviaPoints error", err);
    throw err;
  }
}

export async function getTriviaScore(id) {
  try {
    const sid = String(id);

    const res = await getClient().query(
      "SELECT * FROM trivia_scores WHERE id = $1",
      [sid]
    );

    if (res.rows.length > 0) {
      return res.rows[0].score;
    }
  } catch (err) {
    throw err;
  }

  return 0;
}

export async function voteTriviaSkip(id, name) {
  try {
    const sid = String(id);

    const res1 = await getClient().query(
      "SELECT * FROM trivia_scores WHERE id=$1",
      [sid]
    );

    if (res1.rows.length > 0) {
      try {
        await getClient().query("UPDATE trivia_scores SET vote_skip=1 WHERE id=$1", [
          sid
        ]);
      } catch (err) {
        throw err;
      }
    } else {
      await getClient().query(
        "INSERT INTO trivia_scores (id, nick, score, vote_skip) VALUES ($1, $2, 0, 1)",
        [sid, name]
      );
    }

    const res2 = await getClient().query(
      "SELECT * FROM trivia_scores WHERE vote_skip=1"
    );

    return res2.rows.length;
  } catch (err) {
    throw err;
  }
}

export async function resetTriviaSkip() {
  try {
    await getClient().query("UPDATE trivia_scores SET vote_skip=0");
  } catch (err) {
    throw err;
  }

  return 3;
}

export async function markTriviaNeedingHints(id, mark) {
  try {
    await getClient().query(
      "UPDATE trivia_questions_and_answers SET mark=$2 WHERE id=$1",
      [id, mark]
    );
  } catch (err) {
    throw err;
  }
}

export async function setTriviaHints(id, hints) {

  await getClient().query(
    "UPDATE trivia_questions_and_answers SET hints=$2 WHERE id=$1",
    [id, hints]
  );

}

export async function getTriviaHintLevel() {

  const res = await getClient().query(
    "SELECT vint FROM status WHERE vname='trivia_hint_level'"
  );
  return res.rows[0].vint;

}

export async function increaseTriviaHintLevel() {
  try {
    await getClient().query(
      "UPDATE status SET vint=vint+1 WHERE vname='trivia_hint_level' AND vint<3"
    );

  } catch (err) {
    //don't throw because not updatig passed 3 is acceptable
  }
}

export async function resetTriviaHintLevel() {

  await getClient().query(
    "UPDATE status SET vint=0 WHERE vname='trivia_hint_level'"
  );
}

export async function voteIncreaseTriviaHintLevel(id) {
  await getClient().query(
    "UPDATE trivia_scores SET vote_hint=1 WHERE id=$1", [id]
  );
}

export async function getTriviaHintVoteCount() {

  const res = await getClient().query(
    "SELECT * FROM trivia_scores WHERE vote_hint=1"
  );

  return res.rows.length;
}

export async function resetTriviaHintVoteCount() {

  await getClient().query(
    "UPDATE trivia_scores SET vote_hint=0"
  );
}
