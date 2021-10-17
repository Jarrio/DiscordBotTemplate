package discord_api_types;

typedef MessageReactionRemoveData = {
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