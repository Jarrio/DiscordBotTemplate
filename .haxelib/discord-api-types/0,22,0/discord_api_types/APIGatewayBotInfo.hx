package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#get-gateway-bot
**/
typedef APIGatewayBotInfo = {
	/**
		The recommended number of shards to use when connecting
		
		See https://discord.com/developers/docs/topics/gateway#sharding
	**/
	var shards : Float;
	/**
		Information on the current session start limit
		
		See https://discord.com/developers/docs/topics/gateway#session-start-limit-object
	**/
	var session_start_limit : APIGatewaySessionStartLimit;
	/**
		The WSS URL that can be used for connecting to the gateway
	**/
	var url : String;
};