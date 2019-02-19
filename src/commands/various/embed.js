import { MessageEmbed } from "discord.js";
import { Command } from "discord.js-commando";

export default class EmbedCommand extends Command {
  constructor(client) {
    super(client, {
      name: "embed",
      group: "various",
      memberName: "embed",
      description: "Embeds the text you provide",
      examples: ["embed Embeds are cool..."],
      args: [
        {
          key: "text",
          prompt: "What text would you like the bot to embed?",
          type: "string"
        }
      ]
    });
  }

  run(
    msg,
    args
  ) {
    const { text } = args;
    const embed = new MessageEmbed()
      .setDescription(text)
      .setAuthor(msg.author.username, msg.author.displayAvatarURL())
      .setColor(0x00ae86)
      .setTimestamp();

    return msg.embed(embed);
  }
}
