import { getTimeByAddress } from '../services/timezone';

export default async (message, args = []) => {
  if (!args.length) {
    message.reply('Include the city/country to get the time for in the command');
    return;
  }

  const query = args.join(' ');

  try {
    const res = await getTimeByAddress(query);
    const date = res.time.format('MMMM Do YYYY');
    const time = res.time.format('HH:mm');

    message.reply(`It is __${time}__, ${date} in **${res.placeName}**`);
  } catch(err) {
    message.reply(err.message);
  }
}
