package discord_js;

@:jsRequire("discord.js", "GuildEmoji") extern class GuildEmoji extends BaseGuildEmoji {
	function new();
	public final deletable : Bool;
	public var author : Null<User>;
	public final roles : GuildEmojiRoleManager;
	public function delete(?reason:String):js.lib.Promise<GuildEmoji>;
	public function edit(data:GuildEmojiEditData, ?reason:String):js.lib.Promise<GuildEmoji>;
	public function equals(other:ts.AnyOf2<Dynamic, GuildEmoji>):Bool;
	public function fetchAuthor():js.lib.Promise<User>;
	public function setName(name:String, ?reason:String):js.lib.Promise<GuildEmoji>;
	static var prototype : GuildEmoji;
}