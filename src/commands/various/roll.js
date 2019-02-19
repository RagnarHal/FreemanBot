import { getRandomInteger } from "../../utils";
import { Command } from "discord.js-commando";

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

export default class Roll extends Command {
  constructor(client) {
    super(client, {
      name: "roll",
      group: "various",
      memberName: "roll",
      description: "Roll a dice",
      examples: ["roll 6", "roll 2d8", "roll 2x3d12+5"],
      args: [
        {
          key: "diceNotation",
          prompt: "What do you want to roll?",
          type: "string",
          default: "100"
        }
      ]
    });
  }

  run(message, { diceNotation }) {
    if (diceNotation === "100") {
      message.reply(`I rolled a d100 and got ${rollDie(100)}`);
      return;
    }

    if (diceNotation === "rick") {
      message.reply("https://www.youtube.com/watch?v=dQw4w9WgXcQ");
      return;
    }

    diceNotation = diceNotation.replace(/\s/g, "");

    if (isPlain(diceNotation)) {
      diceNotation = `1d${diceNotation}`;
    }

    const parsedRoll = parseRoll(diceNotation);

    if (!parsedRoll) {
      message.reply("Invalid argument");
      return;
    }

    const [
      rollCount = 1,
      diceCount = 1,
      sides,
      modifier = 0
    ] = parsedRoll.slice(1);

    // TODO: Support L and H modifiers (Add/Subtract lowest/highest roll for each roll count)
    let rollResult = 0;
    for (let i = 0; i < rollCount; i++) {
      for (let j = 0; j < diceCount; j++) {
        rollResult += rollDie(sides);
      }
    }

    rollResult += modifier;

    message.reply(`I rolled a total of ${rollResult}`);
  }
}
