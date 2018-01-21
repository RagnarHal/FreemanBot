export default (message, args) => {
  const sayMessage = args.join(' ');
  message.delete().catch(() => console.error('say: Unable to delete message'));
  message.channel.send(sayMessage);
}