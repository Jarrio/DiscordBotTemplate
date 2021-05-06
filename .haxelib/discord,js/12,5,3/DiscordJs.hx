@:jsRequire("discord.js") @valueModuleOnly extern class DiscordJs {
	static function PartialTextBasedChannel<T>(?Base:discord_js.Constructable<T>):discord_js.Constructable<Dynamic>;
	static function TextBasedChannel<T, I>(?Base:discord_js.Constructable<T>, ?ignore:Array<I>):discord_js.Constructable<Dynamic>;
	static function WebhookMixin<T>(?Base:discord_js.Constructable<T>):discord_js.Constructable<Dynamic>;
	static function VolumeMixin<T>(base:discord_js.Constructable<T>):discord_js.Constructable<Dynamic>;
	static final version : String;
	static final Constants : {
		var Package : {
			var name : String;
			var version : String;
			var description : String;
			var author : String;
			var license : String;
			var main : Dynamic;
			var types : Dynamic;
			var homepage : String;
			var keywords : Array<String>;
			var bugs : {
				var url : String;
			};
			var repository : {
				var type : String;
				var url : String;
			};
			var browser : { };
			var scripts : { };
			var engines : { };
			var dependencies : { };
			var peerDependencies : { };
			var devDependencies : { };
		};
		var browser : Bool;
		var DefaultOptions : discord_js.ClientOptions;
		var UserAgent : Null<String>;
		var Endpoints : {
			var botGateway : String;
			dynamic function invite(root:String, code:String):String;
			dynamic function CDN(root:String):{
				dynamic function Asset(name:String):String;
				dynamic function DefaultAvatar(id:ts.AnyOf2<String, Float>):String;
				dynamic function Emoji(emojiID:String, format:String):String;
				dynamic function Avatar(userID:ts.AnyOf2<String, Float>, hash:String, format:String, size:Float):String;
				dynamic function Banner(guildID:ts.AnyOf2<String, Float>, hash:String, format:discord_js.AllowedImageFormat, size:Float):String;
				dynamic function Icon(userID:ts.AnyOf2<String, Float>, hash:String, format:String, size:Float):String;
				dynamic function AppIcon(userID:ts.AnyOf2<String, Float>, hash:String, format:discord_js.AllowedImageFormat, size:Float):String;
				dynamic function AppAsset(userID:ts.AnyOf2<String, Float>, hash:String, format:discord_js.AllowedImageFormat, size:Float):String;
				dynamic function GDMIcon(userID:ts.AnyOf2<String, Float>, hash:String, format:discord_js.AllowedImageFormat, size:Float):String;
				dynamic function Splash(guildID:ts.AnyOf2<String, Float>, hash:String, format:discord_js.AllowedImageFormat, size:Float):String;
				dynamic function DiscoverySplash(guildID:ts.AnyOf2<String, Float>, hash:String, format:discord_js.AllowedImageFormat, size:Float):String;
				dynamic function TeamIcon(teamID:ts.AnyOf2<String, Float>, hash:String, format:discord_js.AllowedImageFormat, size:Float):String;
			};
		};
		var WSCodes : {
			@:native("1000")
			var OneZeroZeroZero : String;
			@:native("4004")
			var FourZeroZeroFour : String;
			@:native("4010")
			var FourZeroOneZero : String;
			@:native("4011")
			var FourZeroOneOne : String;
		};
		var Events : {
			var RATE_LIMIT : String;
			var CLIENT_READY : String;
			var RESUMED : String;
			var GUILD_CREATE : String;
			var GUILD_DELETE : String;
			var GUILD_UPDATE : String;
			var INVITE_CREATE : String;
			var INVITE_DELETE : String;
			var GUILD_UNAVAILABLE : String;
			var GUILD_MEMBER_ADD : String;
			var GUILD_MEMBER_REMOVE : String;
			var GUILD_MEMBER_UPDATE : String;
			var GUILD_MEMBER_AVAILABLE : String;
			var GUILD_MEMBER_SPEAKING : String;
			var GUILD_MEMBERS_CHUNK : String;
			var GUILD_INTEGRATIONS_UPDATE : String;
			var GUILD_ROLE_CREATE : String;
			var GUILD_ROLE_DELETE : String;
			var GUILD_ROLE_UPDATE : String;
			var GUILD_EMOJI_CREATE : String;
			var GUILD_EMOJI_DELETE : String;
			var GUILD_EMOJI_UPDATE : String;
			var GUILD_BAN_ADD : String;
			var GUILD_BAN_REMOVE : String;
			var CHANNEL_CREATE : String;
			var CHANNEL_DELETE : String;
			var CHANNEL_UPDATE : String;
			var CHANNEL_PINS_UPDATE : String;
			var MESSAGE_CREATE : String;
			var MESSAGE_DELETE : String;
			var MESSAGE_UPDATE : String;
			var MESSAGE_BULK_DELETE : String;
			var MESSAGE_REACTION_ADD : String;
			var MESSAGE_REACTION_REMOVE : String;
			var MESSAGE_REACTION_REMOVE_ALL : String;
			var USER_UPDATE : String;
			var PRESENCE_UPDATE : String;
			var VOICE_STATE_UPDATE : String;
			var VOICE_BROADCAST_SUBSCRIBE : String;
			var VOICE_BROADCAST_UNSUBSCRIBE : String;
			var TYPING_START : String;
			var WEBHOOKS_UPDATE : String;
			var DISCONNECT : String;
			var RECONNECTING : String;
			var ERROR : String;
			var WARN : String;
			var DEBUG : String;
			var SHARD_DISCONNECT : String;
			var SHARD_ERROR : String;
			var SHARD_RECONNECTING : String;
			var SHARD_READY : String;
			var SHARD_RESUME : String;
			var INVALIDATED : String;
			var RAW : String;
		};
		var ShardEvents : {
			var CLOSE : String;
			var DESTROYED : String;
			var INVALID_SESSION : String;
			var READY : String;
			var RESUMED : String;
		};
		var PartialTypes : Dynamic;
		var WSEvents : Dynamic;
		var Colors : {
			var DEFAULT : Int;
			var WHITE : Int;
			var AQUA : Int;
			var GREEN : Int;
			var BLUE : Int;
			var YELLOW : Int;
			var PURPLE : Int;
			var LUMINOUS_VIVID_PINK : Int;
			var GOLD : Int;
			var ORANGE : Int;
			var RED : Int;
			var GREY : Int;
			var NAVY : Int;
			var DARK_AQUA : Int;
			var DARK_GREEN : Int;
			var DARK_BLUE : Int;
			var DARK_PURPLE : Int;
			var DARK_VIVID_PINK : Int;
			var DARK_GOLD : Int;
			var DARK_ORANGE : Int;
			var DARK_RED : Int;
			var DARK_GREY : Int;
			var DARKER_GREY : Int;
			var LIGHT_GREY : Int;
			var DARK_NAVY : Int;
			var BLURPLE : Int;
			var GREYPLE : Int;
			var DARK_BUT_NOT_BLACK : Int;
			var NOT_QUITE_BLACK : Int;
		};
		var Status : {
			var READY : Int;
			var CONNECTING : Int;
			var RECONNECTING : Int;
			var IDLE : Int;
			var NEARLY : Int;
			var DISCONNECTED : Int;
		};
		var OPCodes : {
			var DISPATCH : Int;
			var HEARTBEAT : Int;
			var IDENTIFY : Int;
			var STATUS_UPDATE : Int;
			var VOICE_STATE_UPDATE : Int;
			var VOICE_GUILD_PING : Int;
			var RESUME : Int;
			var RECONNECT : Int;
			var REQUEST_GUILD_MEMBERS : Int;
			var INVALID_SESSION : Int;
			var HELLO : Int;
			var HEARTBEAT_ACK : Int;
		};
		var APIErrors : discord_js.APIErrors;
		var VoiceStatus : {
			var CONNECTED : Int;
			var CONNECTING : Int;
			var AUTHENTICATING : Int;
			var RECONNECTING : Int;
			var DISCONNECTED : Int;
		};
		var VoiceOPCodes : {
			var IDENTIFY : Int;
			var SELECT_PROTOCOL : Int;
			var READY : Int;
			var HEARTBEAT : Int;
			var SESSION_DESCRIPTION : Int;
			var SPEAKING : Int;
			var HELLO : Int;
			var CLIENT_CONNECT : Int;
			var CLIENT_DISCONNECT : Int;
		};
		var ChannelTypes : {
			var TEXT : Int;
			var DM : Int;
			var VOICE : Int;
			var GROUP : Int;
			var CATEGORY : Int;
			var NEWS : Int;
			var STORE : Int;
		};
		var ClientApplicationAssetTypes : {
			var SMALL : Int;
			var BIG : Int;
		};
		var MessageTypes : Array<discord_js.MessageType>;
		var ActivityTypes : Array<discord_js.ActivityType>;
		var ExplicitContentFilterLevels : Array<discord_js.ExplicitContentFilterLevel>;
		var DefaultMessageNotifications : Array<discord_js.DefaultMessageNotifications>;
		var VerificationLevels : Array<discord_js.VerificationLevel>;
		var MembershipStates : String;
	};
}