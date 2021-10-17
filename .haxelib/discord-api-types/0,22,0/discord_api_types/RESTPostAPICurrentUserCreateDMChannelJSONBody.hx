package discord_api_types;

/**
	https://discord.com/developers/docs/resources/user#create-dm
**/
typedef RESTPostAPICurrentUserCreateDMChannelJSONBody = {
	/**
		The recipient to open a DM channel with
	**/
	var recipient_id : String;
};