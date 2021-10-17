package discord_builder;

import haxe.extern.EitherType;

@:jsRequire('@discordjs/builders', 'SharedSlashCommandOptions')
extern class SharedSlashCommandOptions extends SharedNameAndDescription {
	@:overload(function(input:SlashCommandUserOption):SlashCommandUserOption {})
	@:overload(function(input:(builder:SlashCommandUserOption)->SlashCommandUserOption):SlashCommandUserOption {})
	public function addUserOption():SlashCommandBuilder;

	@:overload(function(input:SlashCommandBooleanOption):SlashCommandBooleanOption {})
	@:overload(function(input:(builder:SlashCommandBooleanOption)->SlashCommandBooleanOption):SlashCommandBooleanOption {})
	public function addBooleanOption():SlashCommandBuilder;

	@:overload(function(input:SlashCommandChannelOption):SlashCommandChannelOption {})
	@:overload(function(input:(builder:SlashCommandChannelOption)->SlashCommandChannelOption):SlashCommandChannelOption {})
	public function addChannelOption():SlashCommandBuilder;

	@:overload(function(input:SlashCommandStringOption):SlashCommandStringOption {})
	@:overload(function(input:(builder:SlashCommandStringOption)->SlashCommandStringOption):SlashCommandStringOption {})
	public function addStringOption():SlashCommandBuilder;

	@:overload(function(input:SlashCommandRoleOption):SlashCommandRoleOption {})
	@:overload(function(input:(builder:SlashCommandRoleOption)->SlashCommandRoleOption):SlashCommandRoleOption {})
	public function addRoleOption():SlashCommandBuilder;

	@:overload(function(input:SlashCommandMentionableOption):SlashCommandMentionableOption {})
	@:overload(function(input:(builder:SlashCommandMentionableOption)->SlashCommandMentionableOption):SlashCommandMentionableOption {})
	public function addMentionableOption():SlashCommandBuilder;

	@:overload(function(input:SlashCommandNumberOption):SlashCommandNumberOption {})
	@:overload(function(input:(builder:SlashCommandNumberOption)->SlashCommandNumberOption):SlashCommandNumberOption {})
	public function addNumberOption():SlashCommandBuilder;
	
}