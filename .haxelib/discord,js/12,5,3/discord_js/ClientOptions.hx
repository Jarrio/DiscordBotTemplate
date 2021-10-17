package discord_js;

typedef ClientOptions = {
	@:optional
	var shards : ts.AnyOf3<Float, Array<Float>, String>;
	@:optional
	var shardCount : Float;
	@:optional
	var messageCacheMaxSize : Float;
	@:optional
	var messageCacheLifetime : Float;
	@:optional
	var messageSweepInterval : Float;
	@:optional
	var messageEditHistoryMaxSize : Float;
	@:optional
	var fetchAllMembers : Bool;
	@:optional
	var disableMentions : String;
	@:optional
	var allowedMentions : MessageMentionOptions;
	@:optional
	var partials : Array<PartialTypes>;
	@:optional
	var restWsBridgeTimeout : Float;
	@:optional
	var restTimeOffset : Float;
	@:optional
	var restRequestTimeout : Float;
	@:optional
	var restSweepInterval : Float;
	@:optional
	var retryLimit : Float;
	@:optional
	var presence : PresenceData;
	@:optional
	var ws : WebSocketOptions;
	@:optional
	var http : HTTPOptions;

	@:optional 
	var intents:Array<IntentFlags>;
};

enum abstract IntentFlags(String) to String {
	var GUILDS;
	var GUILD_MEMBERS;
	var GUILD_BANS;
	var GUILD_EMOJIS_AND_STICKERS;
	var GUILD_INTEGRATIONS;
	var GUILD_WEBHOOKS;
	var GUILD_INVITES;
	var GUILD_VOICE_STATES;
	var GUILD_PRESENCES;
	var GUILD_MESSAGES;
	var GUILD_MESSAGE_REACTIONS;
	var GUILD_MESSAGE_TYPING;
	var DIRECT_MESSAGES;
	var DIRECT_MESSAGE_REACTIONS;
	var DIRECT_MESSAGE_TYPING;
}