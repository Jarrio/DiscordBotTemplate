package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#message-reaction-remove-emoji
**/
typedef GatewayMessageReactionRemoveEmojiDispatchData = {
	/**
		The emoji that was removed
	**/
	var emoji : Dynamic;
	/**
		The id of the channel
	**/
	var channel_id : Dynamic;
	/**
		The id of the message
	**/
	var message_id : Dynamic;
	/**
		The id of the guild
	**/
	@:optional
	var guild_id : Dynamic;
};