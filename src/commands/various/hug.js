import { Command } from "discord.js-commando";
import { getRandomInteger } from "../../utils";

const hugs = [
  (u) => `_Hugs ${u}_`,
  (u) => `_Gives ${u} a biiiiiiig hug_`,
  (u) => `:heart: _Huggles ${u}_ :heart:`,
  (u) => `_Hugs ${u}_ ... O_o Is that something in your pocket?`,
  (u) => `BEAR HUG FOR ${u.toUpperCase()}!!! :bear: :hugging:`,
  (u) => `No homo, ${u}, but.... _huuuuug_`,
];

export default class HugCommand extends Command {
  constructor(client) {
    super(client, {
      name: "hug",
      group: "various",
      memberName: "hug",
      description: "Ask me for a nice hug",
      examples: ["hug"],
      args: [
        {
          key: "user",
          prompt: "Who would you like me to hug?",
          type: "member",
          default: ""
        }
      ]
    });
  }

  async run(msg, { user }) {
    const randomResponseIndex = getRandomInteger(hugs.length);

    if (!user) {
      return msg.say(hugs[randomResponseIndex](msg.author.username));
    }

    return msg.say(hugs[randomResponseIndex](user.user.username));
  }
}
