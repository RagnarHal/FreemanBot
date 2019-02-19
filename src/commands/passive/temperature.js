import { Command } from "discord.js-commando";
import {
  includesTemperature,
  matchTemperatures,
  celsiusToFahrenheit,
  fahrenheitToCelsius,
  precisionRound
} from "../../utils";

export default class TemperatureCommand extends Command {
  constructor(client) {
    super(client, {
      name: "temperature",
      group: "passive",
      memberName: "temperature",
      description:
        "I will convert temperatures between Fahrenheit and Celsius when I see them",
      defaultHandling: false,
      patterns: [/\b(\d+|\d+[.,]\d+)°?([CF])\b/]
    });
  }

  run(message) {
    // If the message doesn't actually contain a temperature, we do nothing
    if (!includesTemperature(message.content)) {
      return;
    }

    const response = matchTemperatures(message.content)
      .map(temp => {
        temp = temp.replace(",", ".").trim();
        const t = parseFloat(temp);

        if (temp.includes("C")) {
          const tf = celsiusToFahrenheit(t);
          return `${t}°C\t:point_right:\t${precisionRound(tf, 2)}°F`;
        }

        if (temp.includes("F")) {
          const tc = fahrenheitToCelsius(t);
          return `${t}°F\t:point_right:\t${precisionRound(tc, 2)}°C`;
        }

        return null;
      })
      .filter(r => !!r);

    if (response.length) {
      message.channel.send(response);
    }
  }
}
