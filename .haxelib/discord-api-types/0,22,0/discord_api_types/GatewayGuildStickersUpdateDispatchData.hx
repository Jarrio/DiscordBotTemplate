package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#guild-stickers-update
**/
typedef GatewayGuildStickersUpdateDispatchData = {
	/**
		ID of the guild
	**/
	var guild_id : Dynamic;
	/**
		Array of stickers
		
		See https://discord.com/developers/docs/resources/sticker#sticker-object
	**/
	var stickers : Array<Dynamic>;
};