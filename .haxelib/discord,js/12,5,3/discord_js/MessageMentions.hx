package discord_js;

@:jsRequire("discord.js", "MessageMentions") extern class MessageMentions {
	function new(message:Message, users:ts.AnyOf2<Array<Dynamic>, Collection<String, User>>, roles:ts.AnyOf2<Array<String>, Collection<String, Role>>, everyone:Bool);
	private var _channels : Null<Collection<String, GuildChannel>>;
	private final _content : String;
	private var _members : Null<Collection<String, GuildMember>>;
	public final channels : Collection<String, TextChannel>;
	public final client : Client;
	public var everyone : Bool;
	public final guild : Guild;
	public function has(data:ts.AnyOf6<String, User, GuildMember, Message, GuildChannel, Role>, ?options:{ @:optional var ignoreDirect : Bool; @:optional var ignoreRoles : Bool; @:optional var ignoreEveryone : Bool; }):Bool;
	public final members : Null<Collection<String, GuildMember>>;
	public var roles : Collection<String, Role>;
	public var users : Collection<String, User>;
	public var crosspostedChannels : Collection<String, CrosspostedChannel>;
	public function toJSON():Dynamic;
	static var prototype : MessageMentions;
	public static var CHANNELS_PATTERN : js.lib.RegExp;
	public static var EVERYONE_PATTERN : js.lib.RegExp;
	public static var ROLES_PATTERN : js.lib.RegExp;
	public static var USERS_PATTERN : js.lib.RegExp;
}