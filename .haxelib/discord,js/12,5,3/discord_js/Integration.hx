package discord_js;

@:jsRequire("discord.js", "Integration") extern class Integration extends Base {
	function new(client:Client, data:Dynamic, guild:Guild);
	public var account : IntegrationAccount;
	public var application : Null<IntegrationApplication>;
	public var enabled : Bool;
	public var expireBehavior : Float;
	public var expireGracePeriod : Float;
	public var guild : Guild;
	public var id : String;
	public var name : String;
	public var role : Role;
	public var syncedAt : Float;
	public var syncing : Bool;
	public var type : String;
	public var user : Null<User>;
	public function delete(?reason:String):js.lib.Promise<Integration>;
	public function edit(data:IntegrationEditData, ?reason:String):js.lib.Promise<Integration>;
	public function sync():js.lib.Promise<Integration>;
	static var prototype : Integration;
}