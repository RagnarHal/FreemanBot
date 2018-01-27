if (!process.env.MONGO_URL) {
  throw new Error('MONGO_URL environment variable missing');
}

import mongoose from 'mongoose';
import logger from '../logger';
import Quote from '../models/quote';

export function init() {
  mongoose.connect(process.env.MONGO_URL);

  const db = mongoose.connection;
  db.on('error', err => logger.error(err));
  db.once('open', () => {
    logger.info('Connected to Mongo instance!');
  });
}

export function getRandomQuote() {
  return Quote.findRandom();
}
