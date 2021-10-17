package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#message-reaction-add
**/
typedef GatewayMessageReactionAddDispatchData = {
	/**
		The member who reacted if this happened in a guild
		
		See https://discord.com/developers/docs/resources/guild#guild-member-object
	**/
	@:optional
	var member : Dynamic;
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