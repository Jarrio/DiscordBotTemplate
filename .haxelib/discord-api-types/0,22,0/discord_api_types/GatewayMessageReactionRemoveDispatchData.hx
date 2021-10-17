package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#message-reaction-remove
**/
typedef GatewayMessageReactionRemoveDispatchData = {
	/**
		The id of the user
	**/
	var user_id : Dynamic;
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
	/**
		The emoji used to react
		
		See https://discord.com/developers/docs/resources/emoji#emoji-object
	**/
	var emoji : Dynamic;
};