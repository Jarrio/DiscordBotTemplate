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
};