/*eslint import/namespace: ['error', { allowComputed: true }]*/
import config from "../../config.json";
import * as commands from "./commands";

function parseArgs(content) {
  return content
    .trim()
    .split(" ")
    .slice(1);
}

function parseCommand(content) {
  const args = parseArgs(content);

  return args[0] || "help";
}

function parseParams(content) {
  const args = parseArgs(content);

  return args.slice(1);
}

function handleCommand(command, message, params) {
  const handler = commands[command];
  typeof handler === "function"
    ? handler(message, params)
    : message.reply(`${command} is not a valid Trivia command`);
}

export default message => {
  if (!message.guild) {
    message.reply('Trivia is only available for Guilds');
    return;
  }

  const commandTriggerTrivia = `${config.prefix}trivia`;
  const commandTriggerQuestion = `${config.prefix}question`;
  const commandTriggerHint = `${config.prefix}hint`;
  const commandTriggerSkip = `${config.prefix}skip`;
  const commandTriggerReport = `${config.prefix}report`;
  const commandTriggerScore = `${config.prefix}score`;

  let cmd = "answer";
  let params = message.content.split(" ");

  if (message.content.indexOf(commandTriggerTrivia) === 0) {
    cmd = parseCommand(message.content);
    params = parseParams(message.content);
  } else if (message.content.indexOf(commandTriggerQuestion) === 0) {
    cmd = "question";
    params = "";
  } else if (message.content.indexOf(commandTriggerHint) === 0) {
    cmd = "hint";
    params = "";
  } else if (message.content.indexOf(commandTriggerSkip) === 0) {
    cmd = "skip";
    params = "";
  } else if (message.content.indexOf(commandTriggerReport) === 0) {
    cmd = "report";
    params = "";
  } else if (message.content.indexOf(commandTriggerScore) === 0) {
    cmd = "score";
    params = "";
  }

  handleCommand(cmd, message, params);
};
