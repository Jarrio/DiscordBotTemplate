package discord_builder;

@:jsRequire('@discordjs/builders', 'SlashCommandOptionBase')
extern class SlashCommandOptionBase<T:SlashCommandOptionBase<Dynamic>> extends SharedNameAndDescription {
	public var required:Bool;
	public function new();
	public function setName(command_name:String):T;
	public function setDescription(description:String):T;
	public function setRequired(required:Bool):T;
	public function toJSON():String;
}