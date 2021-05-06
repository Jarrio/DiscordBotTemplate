package discord_js;

@:jsRequire("discord.js", "GuildTemplate") extern class GuildTemplate extends Base {
	function new(client:Client, data:Dynamic);
	public final createdTimestamp : Float;
	public final updatedTimestamp : Float;
	public final url : String;
	public var code : String;
	public var name : String;
	public var description : Null<String>;
	public var usageCount : Float;
	public var creator : User;
	public var creatorID : String;
	public var createdAt : js.lib.Date;
	public var updatedAt : js.lib.Date;
	public var guild : Null<Guild>;
	public var guildID : String;
	public var serializedGuild : Dynamic;
	public var unSynced : Null<Bool>;
	public function createGuild(name:String, ?icon:Dynamic):js.lib.Promise<Guild>;
	public function delete():js.lib.Promise<GuildTemplate>;
	public function edit(?options:{ @:optional var name : String; @:optional var description : String; }):js.lib.Promise<GuildTemplate>;
	public function sync():js.lib.Promise<GuildTemplate>;
	static var prototype : GuildTemplate;
}