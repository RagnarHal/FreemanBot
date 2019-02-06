import logger from '../logger';
import db from '../firestore';
import { getRandomInteger } from '../utils';
import env from '../env';

const QUOTES_COLLECTION = env.isDevelop ? 'quotes--dev' : 'quotes';
const COUNTERS_COLLECTION = env.isDevelop ? 'counters--dev' : 'counters';

const quotesRef = db.collection(QUOTES_COLLECTION);
const quotesCounterRef = db.collection(COUNTERS_COLLECTION).doc('quotes');

export async function getRandomQuote(maxQuoteId, retryCount = 0) {
  if (retryCount >= 4) {
    return null;
  }

  if (!maxQuoteId) {
    const querySnapshot = await quotesCounterRef.get();
    maxQuoteId = querySnapshot.data().count
  }

  const randomQuoteId = getRandomInteger(maxQuoteId) + 1;
  const quote = await getQuoteById(randomQuoteId);

  if (!quote) {
    // Quote with given random ID doesn't exist, try again
    return getRandomQuote(maxQuoteId, retryCount++);
  }

  logger.info("Random quote successfully fetched", quote);
  return quote
}

export async function getQuoteById(id) {
  try {
    const querySnapshot = await quotesRef.where('id', '==', id).limit(1).get();

    const quotes = [];
    querySnapshot.forEach(docSnap => quotes.push(docSnap.data()));

    if (!quotes.length) {
      return null;
    }
    logger.info("Requested quote successfully fetched", quotes[0]);
    return quotes[0];
  } catch (err) {
    logger.error(`getQuoteById error. Requested quote #${id}`, err);
    throw err;
  }
}

export async function addQuote({ author, content, timestamp, valid }) {
  return db.runTransaction(async transaction => {
    const quotesCounterDoc = await transaction.get(quotesCounterRef);
    const newCount = quotesCounterDoc.data().count + 1;

    transaction.update(quotesCounterRef, { count: newCount });
    transaction.set(quotesRef.doc(), { id: newCount, author, content, timestamp, valid });
    return newCount;
  })
}
