import moment from 'moment-timezone';
import { getRandomQuote } from '../services/database';

export default async message => {
  const quote = await getRandomQuote();

  message.channel.send(`#${quote.index}: "${quote.text}" - **${quote.nick}** ${moment(quote.timestamp).format('MMM Do YYYY')}`);
}