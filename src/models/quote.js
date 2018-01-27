import mongoose from "mongoose";
import { getRandomInteger } from "../utils";

const quotesSchema = mongoose.Schema(
  {
    quoteId: { type: Number, required: true },
    nick: { type: String, required: true },
    text: { type: String, required: true },
    timestamp: { type: Date, default: Date.now },
    valid: { type: Boolean, required: true }
  },
  { collection: "quotes" }
);

quotesSchema.statics.findRandom = async function() {
  const count = await this.count().exec();

  return await this.findOne({ valid: true })
    .sort("timestamp")
    .skip(getRandomInteger(count))
    .exec();
};

quotesSchema.statics.findById = function(id) {
  return this.findOne({ valid: true, quoteId: id })
    .exec()
    .then(result => (result ? Object.assign(result) : null));
};

const Quote = mongoose.model("Quote", quotesSchema);

export default Quote;
