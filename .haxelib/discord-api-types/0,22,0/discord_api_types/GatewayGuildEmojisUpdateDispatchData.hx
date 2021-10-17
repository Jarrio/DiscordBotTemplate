package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#guild-emojis-update
**/
typedef GatewayGuildEmojisUpdateDispatchData = {
	/**
		ID of the guild
	**/
	var guild_id : Dynamic;
	/**
		Array of emojis
		
		See https://discord.com/developers/docs/resources/emoji#emoji-object
	**/
	var emojis : Array<Dynamic>;
};