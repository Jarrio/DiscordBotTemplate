package discord_js;

@:jsRequire("discord.js", "GuildApplicationCommandManager") 
extern class GuildApplicationCommandManager extends ApplicationCommandManager {
	public var guild:Guild;
}