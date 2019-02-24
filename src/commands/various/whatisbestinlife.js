import { Command } from "discord.js-commando";
import { wait } from "../../utils";

let isReady = true;

export default class WhatIsBestInLife extends Command {
  constructor(client) {
    super(client, {
      name: "whatisbestinlife",
      group: "various",
      memberName: "whatisbestinlife",
      description: "What is best in life?"
    });
  }

  async run(msg) {
    if (!isReady) {
      return;
    }

    const sendMessage = async (message, delay, typingDuration) => {
      await wait(delay);
      msg.channel.startTyping();
      await wait(typingDuration);
      await msg.channel.send(message);
      msg.channel.stopTyping();
    };

    isReady = false;
    await sendMessage("To crush your enemies.", 0, 1000);
    await sendMessage("To see them driven before you.", 100, 2000);
    await sendMessage("And to hear the lamentation of their women.", 100, 2500);
    isReady = true;
  }
}
