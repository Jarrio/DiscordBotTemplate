package discord_js;

@:jsRequire("discord.js", "BaseGuildEmoji") extern class BaseGuildEmoji extends Emoji {
	function new(client:Client, data:Dynamic, guild:Guild);
	private var _roles : Array<String>;
	public var available : Null<Bool>;
	public var guild : ts.AnyOf2<Guild, GuildPreview>;
	public var managed : Null<Bool>;
	public var requiresColons : Null<Bool>;
	static var prototype : BaseGuildEmoji;
}