package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#message-object-message-reference-structure
**/
typedef APIMessageReference = {
	/**
		ID of the originating message
	**/
	@:optional
	var message_id : Dynamic;
	/**
		ID of the originating message's channel
	**/
	var channel_id : Dynamic;
	/**
		ID of the originating message's guild
	**/
	@:optional
	var guild_id : Dynamic;
};