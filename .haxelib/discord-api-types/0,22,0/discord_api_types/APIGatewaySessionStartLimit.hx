package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#session-start-limit-object
**/
typedef APIGatewaySessionStartLimit = {
	/**
		The total number of session starts the current user is allowed
	**/
	var total : Float;
	/**
		The remaining number of session starts the current user is allowed
	**/
	var remaining : Float;
	/**
		The number of milliseconds after which the limit resets
	**/
	var reset_after : Float;
	/**
		The number of identify requests allowed per 5 seconds
	**/
	var max_concurrency : Float;
};