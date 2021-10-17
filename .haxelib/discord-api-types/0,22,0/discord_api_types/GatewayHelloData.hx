package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#hello
**/
typedef GatewayHelloData = {
	/**
		The interval (in milliseconds) the client should heartbeat with
	**/
	var heartbeat_interval : Float;
};