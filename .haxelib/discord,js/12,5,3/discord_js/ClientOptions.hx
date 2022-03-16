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


enum abstract IntentFlags(Int) to Int {
	var GUILDS = 1 << 0;
	var GUILD_MEMBERS = 1 << 1;
	var GUILD_BANS = 1 << 2;
	var GUILD_EMOJIS_AND_STICKERS = 1 << 3;
	var GUILD_INTEGRATIONS = 1 << 4;
	var GUILD_WEBHOOKS = 1 << 5;
	var GUILD_INVITES = 1 << 6;
	var GUILD_VOICE_STATES = 1 << 7;
	var GUILD_PRESENCES = 1 << 8;
	var GUILD_MESSAGES = 1 << 9;
	var GUILD_MESSAGE_REACTIONS = 1 << 10;
	var GUILD_MESSAGE_TYPING = 1 << 11;
	var DIRECT_MESSAGES = 1 << 12;
	var DIRECT_MESSAGE_REACTIONS = 1 << 13;
	var DIRECT_MESSAGE_TYPING = 1 << 14;
	var GUILD_SCHEDULED_EVENTS = 1 << 16;
}