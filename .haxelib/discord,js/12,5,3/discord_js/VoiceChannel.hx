package discord_js;

@:jsRequire("discord.js", "VoiceChannel") extern class VoiceChannel extends GuildChannel {
	function new(guild:Guild, ?data:Dynamic);
	public var bitrate : Float;
	public final editable : Bool;
	public final full : Bool;
	public final joinable : Bool;
	public final speakable : Bool;
	public var userLimit : Float;
	public function join():js.lib.Promise<VoiceConnection>;
	public function leave():Void;
	public function setBitrate(bitrate:Float, ?reason:String):js.lib.Promise<VoiceChannel>;
	public function setUserLimit(userLimit:Float, ?reason:String):js.lib.Promise<VoiceChannel>;
	public function clone(?options:GuildChannelCloneOptions):js.lib.Promise<VoiceChannel>;
	public function createOverwrite(userOrRole:ts.AnyOf5<String, User, GuildMember, Message, Role>, options:PermissionOverwriteOption, ?reason:String):js.lib.Promise<VoiceChannel>;
	public function edit(data:ChannelData, ?reason:String):js.lib.Promise<VoiceChannel>;
	public function lockPermissions():js.lib.Promise<VoiceChannel>;
	public function overwritePermissions(overwrites:ts.AnyOf2<haxe.ds.ReadOnlyArray<OverwriteResolvable>, Collection<String, OverwriteResolvable>>, ?reason:String):js.lib.Promise<VoiceChannel>;
	public function setName(name:String, ?reason:String):js.lib.Promise<VoiceChannel>;
	public function setParent(channel:Null<ts.AnyOf2<String, CategoryChannel>>, ?options:{ @:optional var lockPermissions : Bool; @:optional var reason : String; }):js.lib.Promise<VoiceChannel>;
	public function setPosition(position:Float, ?options:{ @:optional var relative : Bool; @:optional var reason : String; }):js.lib.Promise<VoiceChannel>;
	public function setTopic(topic:Null<String>, ?reason:String):js.lib.Promise<VoiceChannel>;
	public function updateOverwrite(userOrRole:ts.AnyOf5<String, User, GuildMember, Message, Role>, options:PermissionOverwriteOption, ?reason:String):js.lib.Promise<VoiceChannel>;
	static var prototype : VoiceChannel;
}