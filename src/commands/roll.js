import { getRandomInteger } from "../utils";

// Matches plain numbers or plain number with modifier,
// to allow rolls like "6" or "6+4" to be treated as "d6" and "d6+4"
function isPlain(str) {
  return /^\d+[+-]?\d*$/g.test(str);
}

function parseRoll(roll) {
  const result = /(?:(\d+)\s*X\s*)?(\d*)D(\d*)((?:[+-]\d+)|(?:[+-][LH]))?/i.exec(
    roll
  );

  if (!result) {
    return null;
  }

  return result.map(r => {
    // An omitted dice number results in match of empty string. Default to 1
    if (r === "") {
      return 1;
    }

    if (r === undefined || isNaN(r)) {
      return r;
    }

    return parseInt(r);
  });
}

function rollDie(sides) {
  return getRandomInteger(sides) + 1;
}

export default (message, args = []) => {
  if (!args.length) {
    message.reply(`I rolled a d100 and got ${rollDie(100)}`);
    return;
  }

  let argument = args.join("");

  if (argument === "rick") {
    message.reply("https://www.youtube.com/watch?v=dQw4w9WgXcQ");
    return;
  }

  argument = argument.replace(/\s/g, "");

  if (isPlain(argument)) {
    argument = `1d${argument}`;
  }

  const parsedRoll = parseRoll(argument);

  if (!parsedRoll) {
    message.reply("Invalid argument");
    return;
  }

  const [rollCount = 1, diceCount = 1, sides, modifier = 0] = parsedRoll.slice(
    1
  );

  // TODO: Support L and H modifiers (Add/Subtract lowest/highest roll for each roll count)
  let rollResult = 0;
  for (let i = 0; i < rollCount; i++) {
    for (let j = 0; j < diceCount; j++) {
      rollResult += rollDie(sides);
    }
  }

  rollResult += modifier;

  message.reply(`I rolled a total of ${rollResult}`);
};

export const helpText = `
Roll some dice! Inputs are of the form <totalRolls>x<dicePerRoll>d<sides>[+-]<modifier>.
The modifier is always added last, and only once.
Example inputs:
  4 - Roll a single 4-sides die
  6d - Roll a single 6-sided die
  2d8 - Roll two 8-sided die
  2x3d10 - Roll three 10-sided die, repeated twice
  d20+6 - Roll a 20-sided die, then add 6
  2 x 2d12 - 4 - Roll two 12-sided dice, repeated twice, then subtract 4 from the total
`;
