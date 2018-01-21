export default (message, args) => {
  let sides = 100;

  if (args.length) {
    const integerArg = parseInt(args[0]);

    if (isNaN(integerArg)) {
      message.reply("You can't roll a word, dumbass")
      return;
    }

    sides = integerArg;
  }
  
  const rollResult = Math.floor(Math.random() * sides + 1)
  message.reply(`I rolled a ${rollResult}`)
}