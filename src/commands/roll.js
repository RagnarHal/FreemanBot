import { getRandomInteger } from '../utils';

export default (message, args) => {
  let sides = 100;

  if (args.length) {
    if (args[0] === 'rick') {
      message.reply('https://www.youtube.com/watch?v=dQw4w9WgXcQ');
      return;
    }

    const integerArg = parseInt(args[0]);

    if (isNaN(integerArg)) {
      message.reply("You can't roll a word, dumbass")
      return;
    }

    if (integerArg < 1) {
      message.reply('I rolled a... wait, that doesn\'t make sense!');
      return;
    }

    sides = integerArg;
  }
  
  const rollResult = getRandomInteger(sides) + 1;
  message.reply(`I rolled a ${rollResult}`)
}