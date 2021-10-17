package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#activity-object-activity-timestamps
**/
typedef GatewayActivityTimestamps = {
	/**
		Unix time (in milliseconds) of when the activity started
	**/
	@:optional
	var start : Float;
	/**
		Unix time (in milliseconds) of when the activity ends
	**/
	@:optional
	var end : Float;
};