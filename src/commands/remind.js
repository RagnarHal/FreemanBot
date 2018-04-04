import mmt from "moment-timezone";
import sherlock from "sherlockjs";

function resolveUser(message, subject) {
  if (subject === "me") {
    return message.author;
  }

  const subjectIsMention = /<@!?[0-9]+>/g.test(subject);
  if (subjectIsMention) {
    const userId = subject.replace(/[<@!>]/g, "");
    const guildMember = message.guild.member(userId);
    return guildMember ? guildMember.user : null;
  }

  return null;
}

export default (message, args = []) => {
  if (args.length < 2) {
    message.reply(">remind <subject> <event>");
    return;
  }

  const subject = args.shift();
  const reminder = args.join(" ");

  const subjectUser = resolveUser(message, subject);

  if (!subjectUser) {
    message.reply(`I couldn't find the user ${subject}`);
    return;
  }

  const { eventTitle, startDate /* endDate, isAllDay */ } = sherlock.parse(
    reminder
  );

  if (!startDate) {
    message.reply(
      "I didn't get that, I was unable to deduce the time for the reminder"
    );
    return;
  }

  const date = mmt(startDate).format("ddd MMM Do YYYY");
  const time = mmt(startDate).format("HH:mm");

  message.reply(
    `Reminder set for ${
      subjectUser.username
    }: "${eventTitle}" on ${date} at ${time} UTC (Although not really, this is just a prototype for now)`
  );
};
