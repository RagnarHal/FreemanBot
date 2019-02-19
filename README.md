# FreemanBot

A small bot for the Half Life Fallout community Discord guild.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Minimum Prerequisites

- NodeJS v10 or higher
- NPM (Bundled with Node) or Yarn. This readme will assume Yarn.
- [A Firebase project](https://firebase.google.com/)

### Installing Dependencies

Grab a copy of the code by cloning the Git repo or downloading the .zip file. Then from the root folder, run:

```
yarn install
```

to install all required dependencies.

### Environment Configuration

This bot is designed to be run on any environment by anyone. Therefore, all environment-specific configuration is exposed to the code as **environment variables**. This allows the user of the bot to change keys, tokens and more without having to re-build the source code, essentially making the bot very portable. The following are the environment variables the bot consumes:

- BOT_TOKEN
- OWNER_ID
- GOOGLE_API_KEY
- OXFORD_APP_ID
- OXFORD_APP_KEY
- OXFORD_BASE_URL
- FIREBASE_DATABASE_URL
- FIREBASE_PROJECT_ID
- FIREBASE_PRIVATE_KEY
- FIREBASE_CLIENT_EMAIL

All of these variables must be defined in the environment the bot is ran on. If any of the variables are missing, the bot will throw an error and exit on startup.

To make the management of the environment easier when developing, it is possible to declare a `.env` file in the root of the project. Any variables defined in this file will be exposed to the bot as environment variables at runtime. Note that variables defined on the host system itself always take precedence over the variables defined in the `.env` file. The `.env` file should never be checked into the code repository.

For convenience, there is a `.env.sample` file checked into the source repository. Simply remove the `.sample` part of the file and fill in the appropriate values.

### Firebase

This bot uses [Google Firestore](https://firebase.google.com/docs/firestore/) as a persistence backend to store configurations and data. Therefore, to run the bot, you must set up a Firebase project of your own (it's free) and acquire a service account. Please see [this guide](https://firebase.google.com/docs/admin/setup#add_firebase_to_your_app) for information on how to create the Firebase project and downloading service account credentials.

To expose the service account credentials to the bot without checking them into the code repository, environment variables are used. You will need to copy specific field values from your service account file over to the corresponding environment variables. Specifically:

- \<Env Variable\> <-- \<Field Name\>
- FIREBASE_PROJECT_ID <-- project_id
- FIREBASE_PRIVATE_KEY <-- private_key (note: **not** the private_key_id field)
- FIREBASE_CLIENT_EMAIL <-- client_email

Make sure that the private key is copied verbatim, and in one line (with the \n tokens intact).

**Be careful never to commit the filled-in .env file or the service account credentials to source control. If you do by accident, immediately revoke the service account and create a new one**

### Oxford English Dictionary

The bot uses the [Oxford Dictionaries](https://developer.oxforddictionaries.com/) API to look up words in the dictionary. You will need to get credentials of your own.

### Discord Token

To run the bot on a Discord channel, you need to set up a Discord app and grab a unique token. See [here](https://github.com/reactiflux/discord-irc/wiki/Creating-a-discord-bot-&-getting-a-token) for more details.

When you have your token, add it as the BOT_TOKEN environment variable.

## Developing

After all required environment variables are set and all dependencies are installed, open your terminal in the root folder (where the `package.json` file resides) of the bot and run

```
yarn dev
```

The bot will be spun up in development mode and join the server that you invited it to when setting up your Discord App.

In development mode, the bot will be automatically restarted on every file change, so you never have to manually cycle the bot on and off to test a change. Simply make your code change, save the file and the bot will be updated almost immediately (note that there is a few second delay, as the code needs to be re-compiled first). In development mode, no run artifacts are generated; the code is compiled and ran completely in memory with `babel-node`.

To run the bot in Production mode, you can use the command

```
yarn start
```

This will build all the run artifacts into the `dist` folder and run the bot using `node`. This command should be used to run the bot in production. This is also good for testing the build process and to see if everything works smoothly locally, before actual deployment.

Certain configuration parameters, such as the collection names in `Firestore`, are controlled via the special environment variable `NODE_ENV`. This is useful for isolating the development and production data in the backend. If you need to run the bot using the run artifacts, as if it were running in Production mode, but still use the Development backend, you can use the command

```
yarn start:dev
```

This will build the run artifacts and run the bot using regular `node`, but with `NODE_ENV` set to `development` instead of `production`.

To shut down the bot, just press `ctrl-c` in the terminal window where the bot is running.

## Deployment

The bot can be deployed on any machine that has Node 10 installed. Simply install all required dependencies, then run `yarn start` in the project root folder. This will compile all code into a `dist` folder in the root, and then use Node to run the transpiled code. Note that the `.env` file will not be used in live production mode, and you must supply the environment variables yourself on the host system.

### Heroku

This bot runs great on the free tier of [Heroku](https://www.heroku.com/home). Included in the repo is a `Procfile` that can be used for one-click deployment on Heroku. All you need to do push the code to the Heroku remote, and supply the required environment variables on the Heroku dashboard. Please see the [NodeJS Getting Started Guide](https://devcenter.heroku.com/articles/getting-started-with-nodejs) on Heroku.

## Coding Style (for contributions to this repository)

The code is written in ES6 Javascript (with module imports, async/await etc.). The build process uses Babel to transpile the code down to Node-10-compatible ES5 to be run in development or in deployment. The project uses ESLint to enforce best practices, and a precommit hook is set up to notify you if you are committing code that is not compliant. You can also lint the code any time using `yarn lint`, and many code editors support linting as you type. As long as you commit code that passes through the ESLint check, you should be good to go.

I recommend using [VS Code](https://code.visualstudio.com/) with the [Prettier](https://github.com/prettier/prettier-vscode) and [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint) extensions. Included in the repository are workspace settings for VS Code.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
