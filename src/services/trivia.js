import firebase from 'firebase';
import { getRandomDocumentSnapshotInCollection, FieldValue } from '../firestore';
import env from '../env';

const db = firebase.firestore();

const TRIVIA_QUESTIONS = 'triviaQuestions';
const TRIVIA_STATUS = 'triviaStatusByGuild'

const TRIVIA_QUESTIONS_COLLECTION = env.isDevelop ? `${TRIVIA_QUESTIONS}--dev` : TRIVIA_QUESTIONS;
const TRIVIA_STATUS_COLLECTION = env.isDevelop ? `${TRIVIA_STATUS}--dev` : TRIVIA_STATUS;

const questionsRef = db.collection(TRIVIA_QUESTIONS_COLLECTION);
const statusRef = db.collection(TRIVIA_STATUS_COLLECTION);

function getGuildStatusDocRef(guildId) {
  return statusRef.doc(guildId);
}

async function getGuildStatusDoc(guildId) {
  const documentSnapshot = await getGuildStatusDocRef(guildId).get();
  return documentSnapshot.data();
}

async function getCurrentTriviaTime(guildId) {
  const guildStatus = await getGuildStatusDoc(guildId);

  return guildStatus.triviaTime;
}

function getRandomTriviaSnapshot() {
  return getRandomDocumentSnapshotInCollection(questionsRef);
}

export async function getTriviaScore(guildId, userId) {
  const userScoreSnapshot = await getGuildStatusDocRef(guildId).collection('scores').doc(userId).get();
  const userScore = userScoreSnapshot.data();

  return userScore && userScore.score ? userScore.score : 0
}

export async function getCurrentTrivia(guildId) {
  const guildStatus = await getGuildStatusDoc(guildId);
  const questionDocumentSnapshot = await guildStatus.currentQuestion.get();

  return questionDocumentSnapshot.data();
}

export async function hasTriviaTimedOut(guildId) {
  const triviaTime = await getCurrentTriviaTime(guildId);
  const currentTime = Date.now()

  const elapsedTime = currentTime - triviaTime;
  return elapsedTime > 120 * 1000;
}

export async function beginNewRound(guildId) {
  const guildStatusRef = getGuildStatusDocRef(guildId);

  const triviaSnapshot = await getRandomTriviaSnapshot();
  const triviaTime = Date.now();

  await guildStatusRef.set({
    currentQuestion: triviaSnapshot.ref,
    currentHintLevel: 0,
    triviaTime,
    voteHint: [],
    voteSkip: [],
  }, { merge: true });

  return triviaSnapshot.data();
}

export async function reportCurrentTriviaQuestion(guildId) {
  const guildStatus = await getGuildStatusDoc(guildId);

  if (!guildStatus.currentQuestion) {
    throw new Error('No question! Whoopsie!');
  }

  const currentQuestionRef = guildStatus.currentQuestion;

  return db.runTransaction(async transaction => {
    const question = await transaction.get(currentQuestionRef);

    const newReportsCount = question.data().reports + 1;

    transaction.update(currentQuestionRef, { reports: newReportsCount });

    return Object.assign(question.data(), { reports: newReportsCount });
  })

}

/// Scores
export async function awardTriviaPoints(guildId, userId, userName, points) {
  const scoreRef = getGuildStatusDocRef(guildId).collection('scores').doc(userId);

  return db.runTransaction(async transaction => {
    const currentScoreDoc = await transaction.get(scoreRef)
    const newScore = currentScoreDoc.exists ? currentScoreDoc.data().score + points : points

    transaction.set(scoreRef, {
      score: newScore,
      nick: userName
    }, { merge: true })

    return newScore;
  })
}

/// Skips
export async function getSkipVoteCount(guildId) {
  const guildStatus = await getGuildStatusDoc(guildId);

  return guildStatus.voteSkip ? guildStatus.voteSkip.length : 0;
}

export async function voteTriviaSkip(guildId, userId) {
  const guildStatusRef = getGuildStatusDocRef(guildId);

  await guildStatusRef.update({
    voteSkip: FieldValue.arrayUnion(userId)
  });

  return getSkipVoteCount(guildId)
}

/// Hints
export async function getTriviaHintVoteCount(guildId) {
  const guildStatus = await getGuildStatusDoc(guildId);

  return guildStatus.voteHint ? guildStatus.voteHint.length : 0;
}

export async function getTriviaHintLevel(guildId) {
  const guildStatus = await getGuildStatusDoc(guildId);

  return guildStatus.currentHintLevel || 0;
}

export async function voteIncreaseTriviaHintLevel(guildId, userId) {
  const guildStatusRef = getGuildStatusDocRef(guildId);

  return guildStatusRef.update({
    voteHint: FieldValue.arrayUnion(userId)
  })
}

export async function increaseTriviaHintLevel(guildId) {
  const guildStatusRef = getGuildStatusDocRef(guildId);

  return db.runTransaction(async transaction => {
    const statusDoc = await transaction.get(guildStatusRef);
    const newTriviaHintLevel = statusDoc.data().currentHintLevel + 1;

    // Increasing hint level resets both skip and hint votes
    transaction.update(guildStatusRef, {
      currentHintLevel: newTriviaHintLevel,
      voteHint: [],
      voteSkip: []
    });

    return newTriviaHintLevel;
  })
}

export async function setupNewGuildIfNotExists(guildId) {
  const guildReference = getGuildStatusDocRef(guildId);
  const guildStatusSnapshot = await guildReference.get();

  if (!guildStatusSnapshot.exists) {
    return beginNewRound(guildId);
  }
}
