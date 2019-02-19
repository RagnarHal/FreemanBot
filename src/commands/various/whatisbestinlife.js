import { Command } from "discord.js-commando";
import { wait } from "../../utils";

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
    msg.channel.startTyping();
    await wait(1000);
    msg.channel.stopTyping();
    msg.channel.send("To crush your enemies.");
    await wait(100);
    msg.channel.startTyping();
    await wait(2000);
    msg.channel.stopTyping();
    msg.channel.send("To see them driven before you.");
    await wait(100);
    msg.channel.startTyping();
    await wait(2500);
    msg.channel.stopTyping();
    msg.channel.send("And to hear the lamentation of their women.");
  }
}
