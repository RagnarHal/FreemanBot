import { Command } from "discord.js-commando";

export default class FixTableCommand extends Command {
  constructor(client) {
    super(client, {
      name: "unflip tables",
      group: "passive",
      memberName: "fixtable",
      description:
        "I will unflip a flipped table if I see one. ┬─┬ ノ( ゜-゜ノ)",
      defaultHandling: false,
      patterns: [/(.*?)\(╯°□°）╯︵ ┻━┻(.*?)/]
    });
  }

  async run(msg) {
    return msg.reply("┬─┬ ノ( ゜-゜ノ)");
  }
}
