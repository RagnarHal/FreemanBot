import { Command } from "discord.js-commando";
import sherlock from "sherlockjs";
import moment from "moment";
import { oneLine } from "common-tags";

import { uppercaseFirst } from "../../utils";
import { createReminder } from "../../services/reminder";
import logger from "../../logger";

export default class Remind extends Command {
  constructor(client) {
    super(client, {
      name: "remind",
      group: "reminders",
      memberName: "remind",
      description: "Set a reminder for you",
      examples: ["remind me to hang up the laundry at 8pm"],
      args: [
        {
          key: "reminder",
          prompt: "What do you want to be reminded of?",
          type: "string"
        }
      ]
    });
  }

  async run(msg, args) {
    const { reminder } = args;

    let trimmedReminder = reminder;
    if (reminder.toLowerCase().startsWith("me")) {
      trimmedReminder = reminder
        .split(" ")
        .slice(1)
        .join(" ");
    }
    const subjectUser = msg.author;
    const author = msg.author;

    const sherlocked = this.postprocessSherlocked(
      sherlock.parse(trimmedReminder)
    );
    const inputValidation = this.validateSherlocked(sherlocked);

    if (!inputValidation.valid) {
      return msg.reply(`Input was not valid: ${inputValidation.error}`);
    }

    const { startDate, eventTitle } = sherlocked;

    const date = moment(startDate).format("ddd MMM Do YYYY");
    const time = moment(startDate).format("HH:mm");
    const triggerTimestamp = moment(startDate).valueOf();

    try {
      await createReminder({
        authorId: author.id,
        authorUsername: author.username,
        subjectId: subjectUser.id,
        triggerTimestamp,
        message: eventTitle
      });
      msg.reply(oneLine`
      Reminder set for ${subjectUser.username}:
      '${eventTitle}' on ${date} at ${time} UTC
    `);
    } catch (err) {
      logger.error({ message: err.message, stack: err.stack, error: err });
      msg.reply("Failed to set the reminder! :(");
    }
  }

  resolveSubject(msg, subject) {
    if (subject === "me") {
      return msg.author;
    }

    const subjectIsMention = /<@!?[0-9]+>/g.test(subject);
    if (subjectIsMention) {
      const userId = subject.replace(/[<@!>]/g, "");
      const guildMember = msg.guild.member(userId);
      return guildMember ? guildMember.user : undefined;
    }

    return undefined;
  }

  postprocessSherlocked(sherlocked) {
    const newSherlocked = { ...sherlocked };

    const trimmed = newSherlocked.eventTitle.trim();

    if (trimmed.startsWith("to ") || trimmed.startsWith("that ")) {
      newSherlocked.eventTitle = trimmed
        .split(" ")
        .slice(1)
        .join(" ");
    }

    newSherlocked.eventTitle = uppercaseFirst(newSherlocked.eventTitle);

    return newSherlocked;
  }

  validateSherlocked(sherlocked) {
    if (!sherlocked.startDate) {
      return {
        valid: false,
        error: "Missing reminder time/date"
      };
    }

    const reminderTime = moment(sherlocked.startDate);

    if (reminderTime.isBefore(moment())) {
      return {
        valid: false,
        error: "Cannot set reminder in the past"
      };
    }

    return {
      valid: true
    };
  }
}
