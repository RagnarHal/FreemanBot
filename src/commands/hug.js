import { getRandomInteger } from '../utils';

const hugResponses = [
  u => `_Hugs ${u}_`,
  u => `_Gives ${u} a biiiiiiig hug_`,
  u => `:heart: _Huggles ${u}_ :heart:`,
  u => `_Hugs ${u}_ ... O_o Is that something in your pocket?`,
  u => `BEAR HUG FOR ${u.toUpperCase()}!!! :bear: :hugging:`,
  u => `No homo, ${u}, but.... _huuuuug_`,
]

export default (message) => {
  const hugger = message.author.username;
  
  const randomResponseIndex = getRandomInteger(hugResponses.length);
  const handler = hugResponses[randomResponseIndex];
  message.channel.send(handler(hugger));
}