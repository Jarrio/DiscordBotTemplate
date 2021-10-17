package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#thread-list-sync-thread-list-sync-event-fields
**/
typedef GatewayThreadListSync = {
	/**
		ID of the guild
	**/
	var guild_id : Dynamic;
	/**
		The ids of all the parent channels whose threads are being synced, otherwise the entire guild
	**/
	@:optional
	var channel_ids : Array<Dynamic>;
	/**
		Array of the synced threads
	**/
	var threads : Array<Dynamic>;
	/**
		The member objects for the client user in each joined thread that was synced
	**/
	var members : Array<Dynamic>;
};