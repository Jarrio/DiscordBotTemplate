import components.Command;
import discord_builder.SlashCommandNumberOption;
import discord_builder.SlashCommandMentionableOption;
import discord_builder.SlashCommandRoleOption;
import discord_builder.SlashCommandChannelOption;
import discord_builder.SlashCommandBooleanOption;
import discord_builder.SlashCommandStringOption;
import discord_builder.SharedSlashCommandOptions;
import discord_builder.SlashCommandUserOption;
import components.Command;
import discord_builder.BaseCommandInteraction;
import discord_builder.SlashCommandBuilder;
import discord_js.ClientOptions.IntentFlags;
import discordjs.rest.REST;
import discord_api_types.Routes;
import discord_js.Client;
import haxe.Json;
import sys.io.File;
import ecs.Universe;
import haxe.Timer;
import discord_js.User;
import systems.commands.Hi;
import systems.commands.Boop;
import systems.commands.Test;


class Main {
	public static var connected:Bool = false;
	public static var config:TConfig;
	public static var universe:Universe;
	public static function start() {
		universe = new Universe(1000);
		universe.setSystems(Hi);
		universe.setSystems(Boop);
		universe.setSystems(Test);

		var client = new Client({intents: [IntentFlags.GUILDS, IntentFlags.GUILD_MESSAGES]});

		client.once('ready', (_) -> {
			trace('Ready!');
			connected = true;
		});

		client.on('interactionCreate', (interaction:BaseCommandInteraction) -> {
			if (!interaction.isCommand()) return;
			
			var command:Command = {
				name: interaction.commandName,
				content: null
			}

			var enum_id = command.name.charAt(0).toUpperCase() + command.name.substring(1);
			for (value in config.commands) {
				if (value.name != command.name) {
					continue;
				}
				if (value.params == null) {
					command.content = Type.createEnum(CommandOptions, enum_id);
					break;
				} else {
					var params = new Array<Dynamic>();
					for (param in value.params) {
						switch (param.type) {
							case user: 
								params.push(interaction.options.getUser(param.name));
							case bool: 
								params.push(interaction.options.getBoolean(param.name));
							case mention: 
								params.push(interaction.options.getMentionable(param.name));
							case channel: 
								params.push(interaction.options.getChannel(param.name));
							case role: 
								params.push(interaction.options.getRole(param.name));
							case string: 
								params.push(interaction.options.getString(param.name));
							case number: 
								params.push(interaction.options.getNumber(param.name));
							default:
						}
					}
					command.content = Type.createEnum(CommandOptions, enum_id, params);
					break;
				}
			}
			universe.setComponents(universe.createEntity(), command, interaction);
		});

		client.login(config.discord_token);

		new Timer(100).run = function() {
			universe.update(1);
		}
	}

	static function main() {
		try {
			config = Json.parse(File.getContent('./config.json'));
		} catch (e) {
			trace(e.message);
		}

		if (config == null || config.discord_token == 'TOKEN_HERE') {
			throw ('Enter your discord auth token.');
		}

		var commands = parseCommands();
		var rest = new REST({ version: '9' }).setToken(config.discord_token);
		
		rest.put(Routes.applicationGuildCommands(config.client_id, config.server_id), { body: commands })
			.then((_) -> trace('Successfully registered application commands.'), (err) -> trace(err));

		start();
	}

	static function parseCommands() {
		var command_defs = config.commands;
		if (command_defs == null || command_defs.length == 0) {
			throw 'No commands configured in the config.json file.';
		}

		var commands = new Array<AnySlashCommand>();
		for (command in command_defs) {
			var main_command = new SlashCommandBuilder().setName(command.name).setDescription(command.description);
			if (command.params != null) {
				
				for (param in command.params) {
					switch (param.type) {
						case user:
							main_command.addUserOption(
								new SlashCommandUserOption().setName(param.name).setDescription(param.description).setRequired(param.required)
							);
						case string:
							main_command.addStringOption(
								new SlashCommandStringOption().setName(param.name).setDescription(param.description).setRequired(param.required)
							);
						case bool:
							main_command.addBooleanOption(
								new SlashCommandBooleanOption().setName(param.name).setDescription(param.description).setRequired(param.required)
							);
						case channel:
							main_command.addChannelOption(
								new SlashCommandChannelOption().setName(param.name).setDescription(param.description).setRequired(param.required)
							);
						case role:
							main_command.addRoleOption(
								new SlashCommandRoleOption().setName(param.name).setDescription(param.description).setRequired(param.required)
							);
						case mention:
							main_command.addMentionableOption(
								new SlashCommandMentionableOption().setName(param.name).setDescription(param.description).setRequired(param.required)
							);
						case number:
							main_command.addNumberOption(
								new SlashCommandNumberOption().setName(param.name).setDescription(param.description).setRequired(param.required)
							);
						default:
					}
				}
			}
			commands.push(main_command);
		}
		return commands;
	}

	public static var name(get, never):String;
	private static function get_name() {
		if (config == null || config.project_name == null) {
			return 'bot';
		}
		return config.project_name;
	}
}

typedef TConfig = {
	var project_name:String;
	var macros:Bool;
	var client_id:String;
	var server_id:String;
	var discord_token:String;
	var commands:Array<TCommands>;
}

typedef TCommands = {
	var type:CommandType;
	var name:String;
	var description:String;
	@:optional var params:Array<TCommands>;
	@:optional var required:Bool;
}

enum abstract CommandType(String) {
	var string;
	var number;
	var user;
	var channel;
	var role;
	var bool;
	var mention;
}