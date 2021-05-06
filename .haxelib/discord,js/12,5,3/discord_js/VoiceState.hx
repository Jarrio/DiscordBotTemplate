package discord_js;

@:jsRequire("discord.js", "VoiceState") extern class VoiceState extends Base {
	function new(guild:Guild, data:Dynamic);
	public final channel : Null<VoiceChannel>;
	public var channelID : Null<String>;
	public final connection : Null<VoiceConnection>;
	public final deaf : Null<Bool>;
	public var guild : Guild;
	public var id : String;
	public final member : Null<GuildMember>;
	public final mute : Null<Bool>;
	public var selfDeaf : Null<Bool>;
	public var selfMute : Null<Bool>;
	public var serverDeaf : Null<Bool>;
	public var serverMute : Null<Bool>;
	public var sessionID : Null<String>;
	public var streaming : Bool;
	public var selfVideo : Bool;
	public final speaking : Null<Bool>;
	public function setDeaf(deaf:Bool, ?reason:String):js.lib.Promise<GuildMember>;
	public function setMute(mute:Bool, ?reason:String):js.lib.Promise<GuildMember>;
	public function kick(?reason:String):js.lib.Promise<GuildMember>;
	public function setChannel(channel:Null<ChannelResolvable>, ?reason:String):js.lib.Promise<GuildMember>;
	public function setSelfDeaf(deaf:Bool):js.lib.Promise<Bool>;
	public function setSelfMute(mute:Bool):js.lib.Promise<Bool>;
	static var prototype : VoiceState;
}