package discord_builder;

@:jsRequire('@discordjs/builders', 'SlashCommandStringOption')
extern class SlashCommandStringOption extends SlashCommandOptionBase<SlashCommandStringOption> {
	public function new();
	public function addChoice(name:String, value:String):SlashCommandStringOption;
}