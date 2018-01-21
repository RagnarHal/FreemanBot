# FreemanBot

A small bot for the Half Life Fallout community Discord guild.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

* NodeJS v8.9.0 or higher
* NPM (Bundled with Node) or Yarn. The instructions will assume Yarn.

### Installing

Grab a copy of the code by cloning the Git repo or downloading the .zip file. Then from the root folder, run:

```
yarn install
```

to install all required dependencies.

### Developing

To run the bot on a Discord channel, you need to set up a Discord app and grab a unique token. See [here](https://github.com/reactiflux/discord-irc/wiki/Creating-a-discord-bot-&-getting-a-token) for more details.

The bot consumes the token as an environment variable. In a live deployment, this variable would be set directly on the host machine, but to ease development a `.env` file can be used to set any required environment variables. This file will never be loaded in a production environment and should never be committed to the code repository. Note also that environment variables set in the `.env` file will never overwrite variables that are already set on the system.

To set up your .env file, simply rename the provided `.env.default` file to `.env` and fill in the appropriate variables. For example:

```
BOT_TOKEN=my-bot-token
SOME_SUPAR_SEKRIT_STUFF=secret
```

After all required variables are set, open your terminal in the root folder of the bot and run

```
yarn dev
```

The bot will be spun up in development mode and join the server that you invited it to when setting up your Discord App.

In development mode, the bot will be automatically restarted on every file change, so you never have to manually cycle the bot on and off to test a change. Simply make your code change, save the file and the bot will be updated almost immediately.

To shut down the bot, just press `ctrl-c` in the terminal window where the bot is running.

## Testing

No automatic tests are implemented as of yet. For now, just test the bot manually on the server it joined.

## Coding Style

The bot is written in ES6 Javascript and uses Babel to transpile the code down to Node-compatible ES5 to be run in development or in deployment. The project uses ESLint to enforce best practices, and a precommit hook is set up to notify you if you are commiting code that is not compliant. You can also lint the code any time using `yarn lint`, and many code editors support linting as you type. As long as you commit code that passes through the ESLint check, you should be good to go.

## Deployment

The bot can be deployed on any machine that has Node installed. Simply install all required dependencies, then run `yarn start` in the project root folder. This will compile all code into a `dist` folder in the root, and then use Node to run the transpiled code. Note that the `.env` file will not be used in live production mode, and you must supply the environment variables yourself.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
