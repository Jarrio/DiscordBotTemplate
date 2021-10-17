package discord_builder;

@:jsRequire('@discordjs/builders', 'SlashCommandOptionBase')
extern class SlashCommandOptionBase extends SharedNameAndDescription {
	public var required:Bool;
	public function new();
	public function setName(command_name:String):SlashCommandBuilder;
	public function setDescription(description:String):SlashCommandBuilder;
	public function setRequired(required:Bool):SlashCommandOptionBase;
	public function toJSON():String;
}