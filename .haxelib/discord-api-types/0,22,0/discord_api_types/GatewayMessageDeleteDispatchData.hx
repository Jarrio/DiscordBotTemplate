package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#message-delete
**/
typedef GatewayMessageDeleteDispatchData = {
	/**
		The id of the message
	**/
	var id : Dynamic;
	/**
		The id of the channel
	**/
	var channel_id : Dynamic;
	/**
		The id of the guild
	**/
	@:optional
	var guild_id : Dynamic;
};