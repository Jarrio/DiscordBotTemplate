package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#channel-pins-update
**/
typedef GatewayChannelPinsUpdateDispatchData = {
	/**
		The id of the guild
	**/
	@:optional
	var guild_id : Dynamic;
	/**
		The id of the channel
	**/
	var channel_id : Dynamic;
	/**
		The time at which the most recent pinned message was pinned
	**/
	@:optional
	var last_pin_timestamp : String;
};