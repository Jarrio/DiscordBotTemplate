package discord_js;

@:jsRequire("discord.js", "CategoryChannel") extern class CategoryChannel extends GuildChannel {
	function new();
	public final children : Collection<String, GuildChannel>;
	public function clone(?options:GuildChannelCloneOptions):js.lib.Promise<CategoryChannel>;
	public function createOverwrite(userOrRole:ts.AnyOf5<String, User, GuildMember, Message, Role>, options:PermissionOverwriteOption, ?reason:String):js.lib.Promise<CategoryChannel>;
	public function edit(data:ChannelData, ?reason:String):js.lib.Promise<CategoryChannel>;
	public function lockPermissions():js.lib.Promise<CategoryChannel>;
	public function overwritePermissions(overwrites:ts.AnyOf2<haxe.ds.ReadOnlyArray<OverwriteResolvable>, Collection<String, OverwriteResolvable>>, ?reason:String):js.lib.Promise<CategoryChannel>;
	public function setName(name:String, ?reason:String):js.lib.Promise<CategoryChannel>;
	public function setParent(channel:Null<ts.AnyOf2<String, CategoryChannel>>, ?options:{ @:optional var lockPermissions : Bool; @:optional var reason : String; }):js.lib.Promise<CategoryChannel>;
	public function setPosition(position:Float, ?options:{ @:optional var relative : Bool; @:optional var reason : String; }):js.lib.Promise<CategoryChannel>;
	public function setTopic(topic:Null<String>, ?reason:String):js.lib.Promise<CategoryChannel>;
	public function updateOverwrite(userOrRole:ts.AnyOf5<String, User, GuildMember, Message, Role>, options:PermissionOverwriteOption, ?reason:String):js.lib.Promise<CategoryChannel>;
	static var prototype : CategoryChannel;
}