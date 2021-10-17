package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#typing-start
**/
typedef GatewayTypingStartDispatchData = {
	/**
		The id of the channel
	**/
	var channel_id : Dynamic;
	/**
		The id of the guild
	**/
	@:optional
	var guild_id : Dynamic;
	/**
		The id of the user
	**/
	var user_id : Dynamic;
	/**
		Unix time (in seconds) of when the user started typing
	**/
	var timestamp : Float;
	/**
		The member who started typing if this happened in a guild
		
		See https://discord.com/developers/docs/resources/guild#guild-member-object
	**/
	@:optional
	var member : Dynamic;
};