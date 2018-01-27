const tempRegex = /-?(\d+|\d+[.,]\d+)°?[CFK]/g;

// Get a random integer in range [0, upper) (upper is excluded)
export function getRandomInteger(upper = 100) {
  return Math.floor(Math.random() * upper);
}

export function precisionRound(n, precision) {
  const factor = Math.pow(10, precision);
  return Math.round(n * factor) / factor;
}

export function includesTemperature(msg) {
  return tempRegex.test(msg);
}

export function matchTemperatures(msg) {
  return msg.match(tempRegex);
}

export function celsiusToFahrenheit(tc) {
  return tc * 9 / 5 + 32;
}

export function fahrenheitToCelsius(tf) {
  return (tf - 32) * 5 / 9;
}

export function createObjectPathGetter(p) {
  return o => p.reduce((xs, x) => (xs && xs[x] ? xs[x] : null), o);
}

export function getObjectPath(p, o) {
  return createObjectPathGetter(p)(o);
}
