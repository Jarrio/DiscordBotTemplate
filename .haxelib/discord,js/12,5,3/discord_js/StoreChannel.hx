package discord_js;

@:jsRequire("discord.js", "StoreChannel") extern class StoreChannel extends GuildChannel {
	function new(guild:Guild, ?data:Dynamic);
	public var nsfw : Bool;
	public function clone(?options:GuildChannelCloneOptions):js.lib.Promise<StoreChannel>;
	public function createOverwrite(userOrRole:ts.AnyOf5<String, User, GuildMember, Message, Role>, options:PermissionOverwriteOption, ?reason:String):js.lib.Promise<StoreChannel>;
	public function edit(data:ChannelData, ?reason:String):js.lib.Promise<StoreChannel>;
	public function lockPermissions():js.lib.Promise<StoreChannel>;
	public function overwritePermissions(overwrites:ts.AnyOf2<haxe.ds.ReadOnlyArray<OverwriteResolvable>, Collection<String, OverwriteResolvable>>, ?reason:String):js.lib.Promise<StoreChannel>;
	public function setName(name:String, ?reason:String):js.lib.Promise<StoreChannel>;
	public function setParent(channel:Null<ts.AnyOf2<String, CategoryChannel>>, ?options:{ @:optional var lockPermissions : Bool; @:optional var reason : String; }):js.lib.Promise<StoreChannel>;
	public function setPosition(position:Float, ?options:{ @:optional var relative : Bool; @:optional var reason : String; }):js.lib.Promise<StoreChannel>;
	public function setTopic(topic:Null<String>, ?reason:String):js.lib.Promise<StoreChannel>;
	public function updateOverwrite(userOrRole:ts.AnyOf5<String, User, GuildMember, Message, Role>, options:PermissionOverwriteOption, ?reason:String):js.lib.Promise<StoreChannel>;
	static var prototype : StoreChannel;
}