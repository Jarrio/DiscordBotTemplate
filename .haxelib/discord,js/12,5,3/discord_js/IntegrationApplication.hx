package discord_js;

@:jsRequire("discord.js", "IntegrationApplication") extern class IntegrationApplication extends Application {
	function new();
	public var bot : Null<User>;
	static var prototype : IntegrationApplication;
}