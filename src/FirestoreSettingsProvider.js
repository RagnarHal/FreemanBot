import { SettingProvider } from "discord.js-commando";

class FirestoreProvider extends SettingProvider {
  constructor(firestore, settingsCollectionName) {
    super();

    this.firestore = firestore;
    this.settingsCollection = firestore.collection(settingsCollectionName || "settings");

    Object.defineProperty(this, "client", { value: null, writable: true });

    this.settings = new Map();
    this.listeners = new Map();
  }

  async init(client) {
    this.client = client;

    // Load settings collection
    const collectionSnapshot = await this.settingsCollection.get();
    collectionSnapshot.forEach(docSnapshot => {
      const guild = docSnapshot.id;
      const doc = docSnapshot.data();

      this.settings.set(guild, doc);

      // Guild is not global, and doesn't exist currently so lets skip it.
      if (guild !== "global" && !client.guilds.has(guild)) return;

      this.setupGuild(guild, doc);
    });

    // Listen for changes
    this.listeners
      .set("commandPrefixChange", (guild, prefix) => this.set(guild, "prefix", prefix))
      .set("commandStatusChange", (guild, command, enabled) => this.set(guild, `cmd-${command.name}`, enabled))
      .set("groupStatusChange", (guild, group, enabled) => this.set(guild, `grp-${group.id}`, enabled))
      .set("guildCreate", (guild) => {
        const settings = this.settings.get(guild.id);
        if (!settings) return;
        this.setupGuild(guild.id, settings);
      })
      .set("commandRegister", (command) => {
        for (const [guild, settings] of this.settings) {
          if (guild !== "global" && !client.guilds.has(guild)) continue;
          this.setupGuildCommand(client.guilds.get(guild), command, settings);
        }
      })
      .set("groupRegister", (group) => {
        for (const [guild, settings] of this.settings) {
          if (guild !== "global" && !client.guilds.has(guild)) continue;
          this.setupGuildGroup(client.guilds.get(guild), group, settings);
        }
      });
    for (const [event, listener] of this.listeners) client.on(event, listener);
  }

  async destroy() {
    // Remove all listeners from the client
    for (const [event, listener] of this.listeners) this.client.removeListener(event, listener);
    this.listeners.clear();
  }

  get(guild, key, defVal) {
    const settings = this.settings.get(SettingProvider.getGuildID(guild));
    return settings ? typeof settings[key] !== "undefined" ? settings[key] : defVal : defVal;
  }

  async set(guild, key, val) {
    const guildKey = SettingProvider.getGuildID(guild);
    let settings = this.settings.get(guildKey);
    if (!settings) {
      settings = {};
      this.settings.set(guildKey, settings);
    }

    settings[key] = val;

    await this.updateGuild(guildKey, settings);

    if (guildKey === "global") this.updateOtherShards(key, val);
    return val;
  }

  async remove(guild, key) {
    const guildKey = SettingProvider.getGuildID(guild);
    const settings = this.settings.get(guildKey);
    if (!settings || typeof settings[key] === "undefined") return;

    const val = settings[key];
    delete settings[key]; // NOTE: I know this isn't efficient, but it does the job.

    await this.updateGuild(guildKey, settings);

    if (guildKey === "global") this.updateOtherShards(key, undefined);
    return val;
  }

  async clear(guild) {
    const guildKey = SettingProvider.getGuildID(guild);
    if (!this.settings.has(guildKey)) return;
    this.settings.delete(guildKey);

    await this.settingsCollection.doc(guildKey).delete();
    return;
  }

  async updateGuild(guild, settings) {
    await this.settingsCollection.doc(guild).set(settings);
    return;
  }

  /**
   * Loads all settings for a guild
   * @param {string} guild - Guild ID to load the settings of (or 'global')
   * @param {Object} settings - Settings to load
   * @private
   */
  setupGuild(guildKey, settings) {
    if (typeof guildKey !== "string") throw new TypeError("The guild must be a guild ID or \"global\".");
    const guild = this.client.guilds.get(guildKey) || null;

    // Load the command prefix
    if (typeof settings.prefix !== "undefined") {
      if (guild) guild._commandPrefix = settings.prefix;
      else this.client._commandPrefix = settings.prefix;
    }

    // Load all command/group statuses
    for (const command of this.client.registry.commands.values()) this.setupGuildCommand(guild, command, settings);
    for (const group of this.client.registry.groups.values()) this.setupGuildGroup(guild, group, settings);
  }

  /**
   * Sets up a command's status in a guild from the guild's settings
   * @param {?Guild} guild - Guild to set the status in
   * @param {Command} command - Command to set the status of
   * @param {Object} settings - Settings of the guild
   * @private
   */
  setupGuildCommand(guild, command, settings) {
    if (typeof settings[`cmd-${command.name}`] === "undefined") return;
    if (guild) {
      if (!guild._commandsEnabled) guild._commandsEnabled = {};
      guild._commandsEnabled[command.name] = settings[`cmd-${command.name}`];
    } else {
      command._globalEnabled = settings[`cmd-${command.name}`];
    }
  }

  /**
   * Sets up a group's status in a guild from the guild's settings
   * @param {?Guild} guild - Guild to set the status in
   * @param {CommandGroup} group - Group to set the status of
   * @param {Object} settings - Settings of the guild
   * @private
   */
  setupGuildGroup(guild, group, settings) {
    if (typeof settings[`grp-${group.id}`] === "undefined") return;
    if (guild) {
      if (!guild._groupsEnabled) guild._groupsEnabled = {};
      guild._groupsEnabled[group.id] = settings[`grp-${group.id}`];
    } else {
      group._globalEnabled = settings[`grp-${group.id}`];
    }
  }

  /**
   * Updates a global setting on all other shards if using the {@link ShardingManager}.
   * @param {string} key - Key of the setting to update
   * @param {*} val - Value of the setting
   * @private
   */
  updateOtherShards(key, val) {
    if (!this.client.shard) return;
    key = JSON.stringify(key);
    val = typeof val !== "undefined" ? JSON.stringify(val) : "undefined";
    this.client.shard.broadcastEval(`
      if(this.shard.id !== ${this.client.shard.id} && this.provider && this.provider.settings) {
        let global = this.provider.settings.get('global');
        if(!global) {
          global = {};
          this.provider.settings.set('global', global);
        }
        global[${key}] = ${val};
      }
    `);
  }
}

export default FirestoreProvider;
