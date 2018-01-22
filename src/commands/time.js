import moment from 'moment-timezone';
import { getTimeByAddress } from '../services/timezone';

const dateFormatStr = 'MMM Do YYYY';
const timeFormatStr = 'HH:mm';

export default async (message, args = []) => {
  if (!args.length) {
    message.reply('Include the city/country to get the time for in the command');
    return;
  }

  const query = args.join(' ');
  const queryIsTimezone = moment.tz.zone(query);

  if (queryIsTimezone) {
    const mmt = moment();
    const date = mmt.tz(query).format(dateFormatStr);
    const time = mmt.tz(query).format(timeFormatStr);
    message.reply(`It is __${time}__, __${date}__ in the **${query.toUpperCase()}** zone`);
    return;
  }

  try {
    const res = await getTimeByAddress(query);
    const date = res.time.format(dateFormatStr);
    const time = res.time.format(timeFormatStr);

    message.reply(`It is __${time}__, ${date} in **${res.placeName}**`);
  } catch(err) {
    message.reply(err.message);
  }
}
