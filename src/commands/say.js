import logger from '../logger';

export default (message, args) => {
  const sayMessage = args.join(' ');
  message.delete().catch(() => logger.warn('say: Unable to delete message'));
  message.channel.send(sayMessage);
}