package discord_js;

@:jsRequire("discord.js", "Application") extern class Application {
	function new(client:Client, data:Dynamic);
	public final createdAt : js.lib.Date;
	public final createdTimestamp : Float;
	public var description : String;
	public var icon : String;
	public var id : String;
	public var name : String;
	public function coverImage(?options:ImageURLOptions):String;
	public function fetchAssets():js.lib.Promise<Array<ApplicationAsset>>;
	public function iconURL(?options:ImageURLOptions):String;
	public function toJSON():Dynamic;
	public function toString():String;
	static var prototype : Application;
}