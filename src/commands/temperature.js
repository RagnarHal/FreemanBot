import {
  includesTemperature,
  matchTemperatures,
  celsiusToFahrenheit,
  fahrenheitToCelsius,
  precisionRound
} from '../utils';

export default (message) => {
  // If the message doesn't actually contain a temperature, we do nothing
  if (!includesTemperature(message.content)) {
    return;
  }

  let response = matchTemperatures(message.content).map(temp => {
    temp = temp.replace(',', '.');
    const t = parseFloat(temp);

    if (temp.includes('C')) {
      const tf = celsiusToFahrenheit(t)
      return `${t}°C\t:point_right:\t${precisionRound(tf, 2)}°F`
    }
    
    if (temp.includes('F')) {
      const tc = fahrenheitToCelsius(t);
      return `${t}°F\t:point_right:\t${precisionRound(tc, 2)}°C`
    }

    return null;
  })

  response = response.filter(r => !!r);
  if (response.length) {
    message.channel.send(response);
  }
}