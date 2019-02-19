import { Command } from "discord.js-commando";
import { precisionRound } from "../../utils";
import logger from "../../logger";

const tokenTypes = {
  OPERATOR: "OPERATOR",
  LPAREN: "LPAREN",
  RPAREN: "RPAREN",
  LITERAL: "LITERAL",
  FUNCTION: "FUNCTION"
};

function Token(type, value) {
  this.type = type;
  this.value = value;
}

function isDigit(ch) {
  return /\d/.test(ch);
}

function isDot(ch) {
  return /\./.test(ch);
}

function isLetter(ch) {
  return /[a-z]/i.test(ch);
}

function isOperator(ch) {
  return /\+|-|\*|\/|\^/.test(ch);
}

function isLeftParenthesis(ch) {
  return /\(/.test(ch);
}

function isRightParenthesis(ch) {
  return /\)/.test(ch);
}

function tokenize(str) {
  logger.info(`Math: Tokenizing string "${str}"`);
  const chars = str.replace(/ /g, "").split("");

  const result = [];
  let numberBuffer = [];

  function emptyNumberBuffer() {
    if (numberBuffer.length) {
      result.push(
        new Token(tokenTypes.LITERAL, parseFloat(numberBuffer.join("")))
      );
      numberBuffer = [];
    }
  }

  chars.forEach(char => {
    if (isLetter(char)) {
      throw new Error(`Invalid expression "${str}"`);
    }

    if (isDigit(char) || isDot(char)) {
      numberBuffer.push(char);
      return;
    }

    if (isOperator(char)) {
      emptyNumberBuffer();
      result.push(new Token(tokenTypes.OPERATOR, char));
      return;
    }

    if (isLeftParenthesis(char)) {
      emptyNumberBuffer();
      result.push(new Token(tokenTypes.LPAREN, char));
      return;
    }

    if (isRightParenthesis(char)) {
      emptyNumberBuffer();
      result.push(new Token(tokenTypes.RPAREN, char));
      return;
    }
  });

  emptyNumberBuffer();

  logger.info("Math: String tokenized: ", { tokens: result });

  return result;
}

function precedence(operator) {
  switch (operator) {
    case "^":
      return 4;
    case "*":
    case "/":
      return 3;
    case "+":
    case "-":
      return 2;
  }
}

function assoc(operator) {
  if (operator === "^") {
    return "right";
  }

  return "left";
}

function infixToPostfix(str) {
  const infix = tokenize(str);

  if (!infix.length) {
    throw new Error("Invalid expression");
  }

  const operatorStack = [];
  const outputQueue = [];

  function peekTop() {
    return operatorStack[operatorStack.length - 1];
  }

  function popOperatorToOutput() {
    if (operatorStack.length) {
      const opToken = operatorStack.pop();
      outputQueue.push(opToken);
    }
  }

  infix.forEach(token => {
    if (token.type === tokenTypes.LITERAL) {
      outputQueue.push(token);
      return;
    }

    // TODO: Clean up this mess
    if (token.type === tokenTypes.OPERATOR) {
      if (operatorStack.length) {
        while (
          (operatorStack.length &&
            precedence(peekTop().value) > precedence(token.value)) ||
          (precedence(peekTop().value) === precedence(token.value) &&
            assoc(peekTop().value) === "left" &&
            peekTop().type !== tokenTypes.LPAREN)
        ) {
          popOperatorToOutput();
          if (!operatorStack.length) {
            break;
          }
        }
      }

      operatorStack.push(token);
      return;
    }

    if (token.type === tokenTypes.LPAREN) {
      operatorStack.push(token);
    }

    if (token.type === tokenTypes.RPAREN) {
      while (peekTop().type !== tokenTypes.LPAREN) {
        if (!operatorStack.length) {
          throw new Error("Mismatched parentheses");
        }
        popOperatorToOutput();
      }
      operatorStack.pop();
    }
  });

  while (operatorStack.length) {
    if (
      peekTop().type === tokenTypes.RPAREN ||
      peekTop().type === tokenTypes.LPAREN
    ) {
      throw new Error("Mismatched parentheses");
    }
    popOperatorToOutput();
  }

  return outputQueue;
}

function evalBinary(op1, op2, operator) {
  switch (operator) {
    case "+":
      return new Token(tokenTypes.LITERAL, op1 + op2);
    case "-":
      return new Token(tokenTypes.LITERAL, op1 - op2);
    case "*":
      return new Token(tokenTypes.LITERAL, op1 * op2);
    case "/":
      return new Token(tokenTypes.LITERAL, op1 / op2);
    case "^":
      return new Token(tokenTypes.LITERAL, Math.pow(op1, op2));
    default:
      throw new Error(`Operator '${operator}' not supported`);
  }
}

function evalPostfix(postfix) {
  const stack = [];

  postfix.forEach(token => {
    if (token.type === tokenTypes.LITERAL) {
      stack.push(token);
      return;
    }

    if (token.type === tokenTypes.OPERATOR) {
      const op2 = stack.pop();
      const op1 = stack.pop();

      const result = evalBinary(op1.value, op2.value, token.value);

      stack.push(result);
    }
  });

  return stack.pop().value;
}

export default class Calculate extends Command {
  constructor(client) {
    super(client, {
      name: "math",
      aliases: ["calculate"],
      group: "useful",
      memberName: "math",
      description: "Solve a simple math expression",
      examples: ["math (1+2)*3"],
      args: [
        {
          key: "expression",
          prompt: "What do you want to solve?",
          type: "string"
        }
      ]
    });
  }

  run(message, { expression }) {
    try {
      const postfix = infixToPostfix(expression);
      logger.info(
        `Math: Infix expression "${expression}" converted to postfix expression "${postfix
          .map(t => t.value)
          .join("")}"`
      );
      const result = evalPostfix(postfix);

      message.reply(precisionRound(result, 3));
    } catch (err) {
      logger.error(err.stack);
      message.reply(`Error: ${err.message}`);
      return;
    }
  }
}
