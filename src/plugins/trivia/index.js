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
  const commandTrigger = `${config.prefix}trivia`;

  const hasCommandTrigger = message.content.indexOf(commandTrigger) === 0;
  const cmd = hasCommandTrigger ? parseCommand(message.content) : "answer";

  const params = hasCommandTrigger
    ? parseParams(message.content)
    : message.content.split(" ");

  handleCommand(cmd, message, params);
};
