import { Command } from "discord.js-commando";
import moment from "moment";
import { stripIndents } from "common-tags";
import {
  getRemindersForAuthor,
  getReminderBySlug,
  deleteReminder
} from "../../services/reminder";
import logger from "../../logger";

export default class Remind extends Command {
  constructor(client) {
    super(client, {
      name: "reminders",
      group: "reminders",
      memberName: "reminders",
      description: "Manage your reminders",
      examples: ["reminders list", "reminders delete <reminderId>"],
      argsType: "multiple",
      argsCount: 2
    });
  }

  async run(msg, args) {
    logger.info("command: " + JSON.stringify(args));
    const { command, argument } = parseArgs(args);

    if (command === "list") {
      return handleListCommand(msg);
    }

    if (command === "delete") {
      if (!argument) {
        msg.reply("You must specify which reminder you would like to delete");
        return;
      }

      return handleDeleteCommand(msg, argument);
    }
  }
}

function parseArgs(args) {
  const [command, argument] = args;

  return {
    command: command || "list",
    argument
  };
}

async function handleDeleteCommand(msg, reminderSlug) {
  const { id: authorId } = msg.author;

  if (reminderSlug) {
    reminderSlug = reminderSlug.toUpperCase();
  }

  try {
    const reminder = await getReminderBySlug(reminderSlug);
    if (!reminder || reminder.authorId !== authorId) {
      msg.reply(`Reminder ${reminderSlug} not found`);
      return;
    }

    await deleteReminder(reminder.id);

    msg.reply(`Reminder ${reminderSlug} deleted`);
  } catch (err) {
    logger.error({ message: err.message, stack: err.stack, error: err });
    msg.reply(
      "I was unable to delete the reminder for some reason, try again later"
    );
  }
}

async function handleListCommand(msg) {
  try {
    const reminders = await getRemindersForAuthor(msg.author.id);
    msg.author.send(stripIndents`
    You have the following pending reminders:
    ${formatRemindersForReplyMessage(reminders)}
    `);
    msg.reply("Sent you a DM with your pending reminders");
  } catch (err) {
    logger.error({ message: err.message, stack: err.stack, error: err });
    msg.reply("An error occured in the command, please try again later");
  }
}

function formatRemindersForReplyMessage(reminders) {
  if (!reminders.length) {
    return "You have no pending reminders.";
  }

  const reminderStrings = reminders.map(reminder => {
    const { message, triggerTimestamp } = reminder;
    const formattedDatetime = moment(triggerTimestamp).format(
      "ddd MMM Do YYYY HH:mm"
    );

    return ` - ${formattedDatetime} UTC: '${message}' - ${reminder.slug}`;
  });

  return reminderStrings.join("\n");
}
