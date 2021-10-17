package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#message-delete-bulk
**/
typedef GatewayMessageDeleteBulkDispatchData = {
	/**
		The ids of the messages
	**/
	var ids : Array<Dynamic>;
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