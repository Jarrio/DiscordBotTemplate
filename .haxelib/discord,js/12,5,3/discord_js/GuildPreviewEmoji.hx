package discord_js;

@:jsRequire("discord.js", "GuildPreviewEmoji") extern class GuildPreviewEmoji extends BaseGuildEmoji {
	function new(client:Client, data:Dynamic, guild:GuildPreview);
	public final roles : js.lib.Set<String>;
	static var prototype : GuildPreviewEmoji;
}