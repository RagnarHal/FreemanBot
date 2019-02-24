import { Command } from "discord.js-commando";
import sherlock from "sherlockjs";
import chrono from "chrono-node";
import moment from "moment";

import { uppercaseFirst, removeFirstWord } from "../../utils";
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

    const parsedReminder = parseReminder(reminder);
    const { isValid, errors } = validateParsedReminder(parsedReminder);

    if (!isValid) {
      msg.reply("Invalid reminder:\n" + errors.join("\n"));
      return;
    }

    const { time: dateTime, message } = parsedReminder;
    const { author } = msg;

    const timeStr = dateTime.format("ddd MMM Do YYYY at HH:mm");
    const triggerTimestamp = dateTime.valueOf();

    try {
      await createReminder({
        authorId: author.id,
        authorUsername: author.username,
        subjectId: author.id,
        triggerTimestamp,
        message
      });
      msg.reply(` Reminder set for you: '${message}' on ${timeStr} UTC`);
    } catch (err) {
      logger.error({ message: err.message, stack: err.stack, error: err });
      msg.reply("Failed to set the reminder! :(");
    }
  }
}

function parseReminder(reminder) {
  reminder = normalizeReminderString(reminder);

  // Use chrono-node for extracting the trigger time
  // Use sherlockjs to extract the event title, and as a fallback in case chrono
  // can't parse
  const chron = chrono.parse(reminder, Date.now(), { forwardDate: true });
  const sher = sherlock.parse(reminder);

  const parsedTime = chron.length ? chron[0].start.date() : sher.startDate;

  return {
    time: parsedTime ? moment(parsedTime) : undefined,
    message: sher.eventTitle ? uppercaseFirst(sher.eventTitle) : undefined
  };
}

function validateParsedReminder(parsedReminder) {
  const { time, message } = parsedReminder;
  const res = {
    isValid: true,
    errors: []
  };

  if (!time || time.isBefore(moment())) {
    res.isValid = false;
    res.errors.push("Invalid or missing time for reminder");
  }

  if (!message) {
    res.isValid = false;
    res.errors.push("Missing event title");
  }

  return res;
}

function normalizeReminderString(reminder) {
  // Trim and remove any leading extra words like me and to
  reminder = reminder.trim();

  if (reminder.startsWith("me")) {
    reminder = removeFirstWord(reminder);
  }

  if (reminder.startsWith("to")) {
    reminder = removeFirstWord(reminder);
  }

  if (reminder.startsWith("that")) {
    reminder = removeFirstWord(reminder);
  }

  return reminder;
}
