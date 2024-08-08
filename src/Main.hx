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
import discord_api_types.Routes;
import discord_js.rest.REST;
import discord_js.Client;
import haxe.Json;
import sys.io.File;
import ecs.Universe;
import haxe.Timer;
import discord_js.User;
import systems.commands.Hi;
import systems.commands.Boop;
import systems.commands.Test;
import discord_builder.ContextMenuCommandBuilder;
import discord_builder.SlashCommandSubcommandBuilder;
import haxe.extern.EitherType;
import discord_js.PermissionFlags;
import haxe.Rest;

class Main {
	public static var keys:TKeys;
	public static var command_file:Array<TCommands>;

	public static var connected:Bool = false;
	public static var universe:Universe;
	public static function start() {
		universe = Universe.create({
			entities: 1000,
			phases: [
				{
					name: 'main',
					systems: [Hi, Boop, Test]
				}
			]
		});
		
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
			for (value in command_file) {
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

		client.login(discord.token);

		new Timer(100).run = function() {
			universe.update(1);
		}
	}

	static function main() {
		try {
			keys = Json.parse(File.getContent('./config/keys.json'));
			command_file = Json.parse(File.getContent('./config/commands.json'));
			//config = Json.parse(File.getContent('./config.json'));
			
		} catch (e) {
			trace(e.message);
		}

		if (keys == null || discord.token == 'TOKEN_HERE') {
			throw ('Enter your discord auth token.');
		}

		var commands = parseCommands();
		var rest = new REST({ version: '10' }).setToken(discord.token);
		
		rest.put(Routes.applicationGuildCommands(discord.client_id, discord.server_id), { body: commands })
			.then((_) -> trace('Successfully registered application commands.'), (err) -> trace(err));

		start();
	}

	static function parseCommands() {
		if (command_file == null || command_file.length == 0) {
			throw 'No commands configured in the commands.json file.';
		}

		var commands = new Array<AnySlashCommand>();
		for (command in command_file) {
			#if !block
			if (command.is_public != null && !command.is_public) {
				continue;
			}
			#end
			var permission = CommandPermission.fromString(command.permissions);
			if (permission == null) {
				permission = everyone;
			}

			if (command.type == menu) {
				commands.push(new ContextMenuCommandBuilder().setName(command.name).setType(command.menu_type).setDefaultMemberPermissions(permission));
				continue;
			}

			var main_command = new SlashCommandBuilder().setName(command.name).setDescription(command.description).setDefaultMemberPermissions(permission);

			if (command.params != null) {
				for (param in command.params) {
					var autocomplete = false;

					switch (param.type) {
						case subcommand:
							var subcommand = new SlashCommandSubcommandBuilder().setName(param.name).setDescription(param.description);
							for (subparam in param.params) {
								var autocomplete = false;
								if (subparam.autocomplete != null) {
									autocomplete = subparam.autocomplete;
								}
								parseCommandType(subparam, autocomplete, subcommand);
							}

							main_command.addSubcommand(subcommand);
						default:
							if (param.autocomplete != null) {
								autocomplete = param.autocomplete;
							}
							parseCommandType(param, autocomplete, cast main_command);
					}
				}
			}
			commands.push(main_command);
		}
		return commands;
	}

	static function parseCommandType(param:TCommands, autocomplete:Bool, builder:SharedSlashCommandOptions) {
		switch (param.type) {
			case user:
				builder.addUserOption(new SlashCommandUserOption().setName(param.name).setDescription(param.description).setRequired(param.required));
			case string:
				var cmd = new SlashCommandStringOption().setName(param.name).setRequired(param.required).setAutocomplete(autocomplete);
				if (param.description != null) {
					cmd = cmd.setDescription(param.description);
				}
				if (param.choices != null && !autocomplete) {
					var choices = [];
					for (option in param.choices) {
						choices.push({name: option.name, value: option.value});
					}
					cmd.addChoices(...Rest.of(choices));
				}

				builder.addStringOption(cmd);
			case bool:
				builder.addBooleanOption(new SlashCommandBooleanOption().setName(param.name).setDescription(param.description).setRequired(param.required));
			case channel:
				builder.addChannelOption(new SlashCommandChannelOption().setName(param.name).setDescription(param.description).setRequired(param.required));
			case role:
				builder.addRoleOption(new SlashCommandRoleOption().setName(param.name).setDescription(param.description).setRequired(param.required));
			case mention:
				builder.addMentionableOption(new SlashCommandMentionableOption().setName(param.name)
					.setDescription(param.description)
					.setRequired(param.required));
			case number:
				builder.addNumberOption(new SlashCommandNumberOption().setName(param.name).setDescription(param.description).setRequired(param.required));
			default:
		}
	}


	public static var discord(get, never):TDiscordConfig;

	static function get_discord() {
		var config = null;
		#if block
		config = Main.keys.discord_test;
		#else
		config = Main.keys.discord_live;
		#end
		return config;
	}

	public static var name(get, never):String;
	private static function get_name() {
		return 'Hyrobot';
	}
}

typedef TKeys = {
	var discord_live:TDiscordConfig;
	var discord_test:TDiscordConfig;
	//var mysql:TMysqlConfig;
}

typedef TDiscordConfig = {
	var token:String;
	var secret:String;
	var server_id:String;
	var client_id:String;
}

typedef TConfig = {
	var project_name:String;
	var client_id:String;
	var server_id:String;
	var discord_token:String;
	var commands:Array<TCommands>;
}

typedef TCommands = {
	var type:CommandType;
	var menu_type:ContextMenuCommandType;
	var name:String;
	var description:String;
	var id:String;
	@:optional var is_public:Bool;
	@:optional var permissions:String;
	@:optional var params:Array<TCommands>;
	@:optional var required:Bool;
	@:optional var autocomplete:Bool;
	@:optional var choices:Array<{name:String, value:EitherType<Int, String>}>;
}

enum abstract CommandPermission(Int) to Int {
	var admin = PermissionFlags.ADMINISTRATOR;
	var supermod = PermissionFlags.BAN_MEMBERS;
	var everyone = VIEW_CHANNEL | SEND_MESSAGES;

	@:from public static function fromString(value:String):CommandPermission {
		return switch (value) {
			case "admin": admin;
			case "supermod": supermod;
			case "everyone": everyone;
			default: everyone;
		}
	}
}

enum abstract CommandType(String) {
	var subcommand;
	var menu;
	var string;
	var number;
	var user;
	var channel;
	var role;
	var bool;
	var mention;
}
