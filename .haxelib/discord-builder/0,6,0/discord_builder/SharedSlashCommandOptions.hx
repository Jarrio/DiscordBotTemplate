package discord_builder;

import discord_builder.SlashCommandUserOption;
import discord_builder.SlashCommandBuilder;

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

abstract AnySlashCommand(SlashCommandBuilder) {
	private function new(builder:SlashCommandBuilder) {
		this = builder;
	}
	@:from static function fromBase(base:SlashCommandBuilder) {
		return new AnySlashCommand(cast base);
	}
	@:from static function fromUser(user:SlashCommandUserOption) {
		return new AnySlashCommand(cast user);
	}
	@:from static function fromBool(bool:SlashCommandBooleanOption) {
		return new AnySlashCommand(cast bool);
	}
	@:from static function fromString(string:SlashCommandStringOption) {
		return new AnySlashCommand(cast string);
	}
	@:from static function fromChannel(channel:SlashCommandChannelOption) {
		return new AnySlashCommand(cast channel);
	}
	@:from static function fromRole(role:SlashCommandRoleOption) {
		return new AnySlashCommand(cast role);
	}
	@:from static function fromNumber(number:SlashCommandNumberOption) {
		return new AnySlashCommand(cast number);
	}
	@:from static function fromMentionable(mentionable:SlashCommandMentionableOption) {
		return new AnySlashCommand(cast mentionable);
	}
}