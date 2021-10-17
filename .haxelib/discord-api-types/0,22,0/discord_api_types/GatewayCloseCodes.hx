package discord_api_types;

/**
	https://discord.com/developers/docs/topics/opcodes-and-status-codes#gateway-gateway-close-event-codes
**/
@:enum extern abstract GatewayCloseCodes(Int) from Int to Int {
	/**
		We're not sure what went wrong. Try reconnecting?
	**/
	var UnknownError = 4000;
	/**
		You sent an invalid Gateway opcode or an invalid payload for an opcode. Don't do that!
		
		See https://discord.com/developers/docs/topics/gateway#payloads-and-opcodes
	**/
	var UnknownOpcode = 4001;
	/**
		You sent an invalid payload to us. Don't do that!
		
		See https://discord.com/developers/docs/topics/gateway#sending-payloads
	**/
	var DecodeError = 4002;
	/**
		You sent us a payload prior to identifying
		
		See https://discord.com/developers/docs/topics/gateway#identify
	**/
	var NotAuthenticated = 4003;
	/**
		The account token sent with your identify payload is incorrect
		
		See https://discord.com/developers/docs/topics/gateway#identify
	**/
	var AuthenticationFailed = 4004;
	/**
		You sent more than one identify payload. Don't do that!
	**/
	var AlreadyAuthenticated = 4005;
	/**
		The sequence sent when resuming the session was invalid. Reconnect and start a new session
		
		See https://discord.com/developers/docs/topics/gateway#resume
	**/
	var InvalidSeq = 4007;
	/**
		Woah nelly! You're sending payloads to us too quickly. Slow it down! You will be disconnected on receiving this
	**/
	var RateLimited = 4008;
	/**
		Your session timed out. Reconnect and start a new one
	**/
	var SessionTimedOut = 4009;
	/**
		You sent us an invalid shard when identifying
		
		See https://discord.com/developers/docs/topics/gateway#sharding
	**/
	var InvalidShard = 4010;
	/**
		The session would have handled too many guilds - you are required to shard your connection in order to connect
		
		See https://discord.com/developers/docs/topics/gateway#sharding
	**/
	var ShardingRequired = 4011;
	/**
		You sent an invalid version for the gateway
	**/
	var InvalidAPIVersion = 4012;
	/**
		You sent an invalid intent for a Gateway Intent. You may have incorrectly calculated the bitwise value
		
		See https://discord.com/developers/docs/topics/gateway#gateway-intents
	**/
	var InvalidIntents = 4013;
	/**
		You sent a disallowed intent for a Gateway Intent. You may have tried to specify an intent that you have not
		enabled or are not whitelisted for
		
		See https://discord.com/developers/docs/topics/gateway#gateway-intents
		
		See https://discord.com/developers/docs/topics/gateway#privileged-intents
	**/
	var DisallowedIntents = 4014;
}