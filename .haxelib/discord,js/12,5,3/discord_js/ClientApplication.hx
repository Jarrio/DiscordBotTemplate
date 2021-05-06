package discord_js;

@:jsRequire("discord.js", "ClientApplication") extern class ClientApplication extends Application {
	function new();
	public var botPublic : Null<Bool>;
	public var botRequireCodeGrant : Null<Bool>;
	public var cover : Null<String>;
	public var owner : Null<ts.AnyOf2<User, Team>>;
	public var rpcOrigins : Array<String>;
	static var prototype : ClientApplication;
}