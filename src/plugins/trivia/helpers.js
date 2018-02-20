export function hintShow(str, lvl) {
  let count = 0;
  let endstr = "";

  if (lvl <= 0) {
    return "";
  }

  const level = lvl - 1;

  for (let i = 0; i < str.length; i++) {
    const c = str.charAt(i);
    const upper = c.toUpperCase();

    if ((upper >= "A" && upper <= "Z") || (upper >= "0" && upper <= "9")) {
      if (count >= level) {
        endstr += ".";
      } else {
        count += 1;
        endstr += c;
      }
    } else {
      count = 0;
      endstr += c;
    }
  }
  return endstr;
}

export function createTriviaQuestionString(trivia, level) {
  let resp = "";

  if (trivia.hints === "") {
    resp = `#${trivia.id}: ${trivia.question}`;
  } else {
    resp = `#${trivia.id}: ${trivia.question} [${trivia.hints}]`;
  }

  if (level > 0) {
    resp += "\nHint: " + hintShow(trivia.answer, level);
  }

  return resp;
}

export function pointsPerHintLevel(hint_level) {
  if (hint_level === 0) return 5;
  if (hint_level === 1) return 3;
  if (hint_level === 2) return 2;

  return 1;
}
