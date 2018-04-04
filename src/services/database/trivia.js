import logger from "../../logger";
import { getPool } from "./database";

async function getCurrentTriviaTime() {
  const { rows } = await getPool().query(
    "SELECT * FROM status WHERE vname='trivia_time'"
  );

  return parseInt(rows[0].vint);
}

async function getCurrentTriviaKey() {
  const { rows } = await getPool().query(
    "SELECT * from status WHERE vname='trivia_key'"
  );

  return parseInt(rows[0].vint);
}

async function getTriviaById(id) {
  const { rows } = await getPool().query(
    "SELECT * from trivia_questions_and_answers WHERE id = $1;",
    [id]
  );

  return rows[0];
}

async function getRandomTrivia() {
  const { rows } = await getPool().query(
    "SELECT * FROM trivia_questions_and_answers ORDER BY RANDOM() LIMIT 1"
  );

  return rows[0];
}

async function getUserScore(userId) {
  const { rows } = await getPool().query(
    "SELECT * FROM trivia_scores WHERE id=$1",
    [userId]
  );

  return rows[0];
}

function setCurrentTriviaKey(triviaKey) {
  return getPool().query("UPDATE status SET vint=$1 WHERE vname='trivia_key'", [
    triviaKey
  ]);
}

function setCurrentTriviaTime(triviaTime) {
  return getPool().query(
    "UPDATE status SET vint=$1 WHERE vname='trivia_time'",
    [triviaTime]
  );
}

export async function getTriviaHintVoteCount() {
  const res = await getPool().query(
    "SELECT COUNT(*) FROM trivia_scores WHERE vote_hint=1"
  );

  return res.rows[0].count;
}

export function resetTriviaHintVoteCount() {
  return getPool().query("UPDATE trivia_scores SET vote_hint=0");
}

export async function hasTriviaTimedout() {
  const triviaTime = await getCurrentTriviaTime();
  const currentTime = Date.now();

  const elapsedTime = currentTime - triviaTime;
  return elapsedTime > 120 * 1000;
}

export async function getCurrentTrivia() {
  const triviaKey = await getCurrentTriviaKey();
  const trivia = await getTriviaById(triviaKey);

  return trivia;
}

export async function beginNewRound() {
  const trivia = await getRandomTrivia();

  const triviaKey = parseInt(trivia.id);
  const triviaTime = Date.now();

  try {
    await getPool().query("BEGIN");
    await Promise.all([
      setCurrentTriviaKey(triviaKey),
      setCurrentTriviaTime(triviaTime),
      resetTriviaHintVoteCount(),
      resetTriviaSkip(),
      resetTriviaHintLevel()
    ]);
    await getPool().query("COMMIT");

    return trivia;
  } catch (err) {
    logger.error("beginNewRound error. Executing rollback", {
      reason: err.message
    });
    await getPool().query("ROLLBACK");
    throw err;
  }
}

export async function awardTriviaPoints(userId, userName, points) {
  const res = await getUserScore(userId);
  const queryText = res
    ? "UPDATE trivia_scores SET nick=$2, score=score+$3 WHERE id=$1 RETURNING *"
    : "INSERT INTO trivia_scores (id, nick, score) VALUES ($1, $2, $3) RETURNING *";

  const { rows } = await getPool().query(queryText, [userId, userName, points]);

  return rows[0].score;
}

export async function getTriviaScore(userId) {
  const res = await getUserScore(userId);
  return res ? res.score : 0;
}

export async function voteTriviaSkip(userId, userName) {
  const userScore = await getUserScore(userId);

  const queryText = userScore
    ? "UPDATE trivia_scores SET vote_skip=1 WHERE id=$1"
    : "INSERT INTO trivia_scores (id, nick, score, vote_skip) VALUES ($1, $2, 0, 1)";
  const queryParams = userScore ? [userId] : [userId, userName];

  await getPool().query(queryText, queryParams);

  const skipCount = await getPool().query(
    "SELECT COUNT(*) FROM trivia_scores WHERE vote_skip=1"
  );

  return skipCount.rows[0].count;
}

export function resetTriviaSkip() {
  return getPool().query("UPDATE trivia_scores SET vote_skip=0");
}

export function markTriviaNeedingHints(id, mark) {
  return getPool().query(
    "UPDATE trivia_questions_and_answers SET mark=$2 WHERE id=$1",
    [id, mark]
  );
}

export function setTriviaHints(userId, hints) {
  return getPool().query(
    "UPDATE trivia_questions_and_answers SET hints=$2 WHERE id=$1",
    [userId, hints]
  );
}

export async function getTriviaHintLevel() {
  const res = await getPool().query(
    "SELECT vint FROM status WHERE vname='trivia_hint_level'"
  );
  return res.rows[0].vint;
}

export async function increaseTriviaHintLevel() {
  try {
    await getPool().query(
      "UPDATE status SET vint=vint+1 WHERE vname='trivia_hint_level' AND vint<3"
    );
  } catch (err) {
    // don't throw because not updatig passed 3 is acceptable
  }
}

export function resetTriviaHintLevel() {
  return getPool().query(
    "UPDATE status SET vint=0 WHERE vname='trivia_hint_level'"
  );
}

export function voteIncreaseTriviaHintLevel(userId) {
  return getPool().query("UPDATE trivia_scores SET vote_hint=1 WHERE id=$1", [
    userId
  ]);
}
