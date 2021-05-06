package discord_js;

@:jsRequire("discord.js", "GuildEmojiRoleManager") extern class GuildEmojiRoleManager {
	function new(emoji:GuildEmoji);
	public var emoji : GuildEmoji;
	public var guild : Guild;
	public var cache : Collection<String, Role>;
	public function add(roleOrRoles:ts.AnyOf4<String, Role, Collection<String, Role>, haxe.ds.ReadOnlyArray<RoleResolvable>>):js.lib.Promise<GuildEmoji>;
	public function set(roles:ts.AnyOf2<Collection<String, Role>, haxe.ds.ReadOnlyArray<RoleResolvable>>):js.lib.Promise<GuildEmoji>;
	public function remove(roleOrRoles:ts.AnyOf4<String, Role, Collection<String, Role>, haxe.ds.ReadOnlyArray<RoleResolvable>>):js.lib.Promise<GuildEmoji>;
	static var prototype : GuildEmojiRoleManager;
}