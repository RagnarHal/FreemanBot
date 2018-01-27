import mongoose from 'mongoose';
import { getRandomInteger } from '../utils';

const quotesSchema = mongoose.Schema({
  nick: { type: String, required: true },
  text: { type: String, required: true },
  timestamp: { type : Date, default: Date.now },
  valid: { type: Boolean, required: true },
}, { collection: 'quotes' });

quotesSchema.statics.findRandom = function () {
  return new Promise((resolve, reject) => {
    this.count().exec((err, count) => {
      if (err) { return reject(err) }
      const random = getRandomInteger(count);
      
      this.findOne({ valid: true }).sort('timestamp').skip(random).exec((err, result) => {
        if (err) { return reject(err) }
        resolve(Object.assign(result, { index: random }));
      })
    })
  })
}

const Quote = mongoose.model('Quote', quotesSchema);

export default Quote;
