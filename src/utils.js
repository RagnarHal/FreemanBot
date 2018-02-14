const tempRegex = /(^|\s)[-+]?(\d+|\d+[.,]\d+)°?[CFK](?=[\b.\s]|$)/g;

export const createMatrix = (numRows, numCols, initial) => {
  const arr = [];
  for (let i = 0; i < numRows; ++i) {
    const columns = [];
    for (let j = 0; j < numCols; ++j) {
      columns[j] = initial;
    }
    arr[i] = columns;
  }
  return arr;
};

export const levenshtein = (str1, str2) => {
  const a = createMatrix(str1.length + 1, str2.length + 1, 0);

  for (let i = 1; i < str1.length + 1; i++) {
    a[i][0] = i;
  }

  for (let j = 1; j < str2.length + 1; j++) {
    a[0][j] = j;
  }

  for (let j = 1; j < str2.length + 1; j++) {
    for (let i = 1; i < str1.length + 1; i++) {
      let subCost;
      if (str1[i - 1] === str2[j - 1]) {
        subCost = 0;
      } else {
        subCost = 1;
      }
      a[i][j] = Math.min(
        a[i - 1][j] + 1,
        a[i][j - 1] + 1,
        a[i - 1][j - 1] + subCost
      );
    }
  }

  return a[str1.length][str2.length];
};

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

export function hashCode(str) {
  let hash = 0;
  if (!str.length) {
    return hash;
  }

  for (let i = 0; i < str.length; i++) {
    const charCode = str.charCodeAt(i);
    hash = (hash << 5) - hash + charCode;
    hash &= hash;
  }

  return hash;
}
