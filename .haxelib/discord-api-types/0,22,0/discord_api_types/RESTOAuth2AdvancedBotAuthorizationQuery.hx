package discord_api_types;

/**
	https://discord.com/developers/docs/topics/oauth2#advanced-bot-authorization
**/
typedef RESTOAuth2AdvancedBotAuthorizationQuery = {
	var client_id : Dynamic;
	/**
		This assumes you include the `bot` scope alongside others (like `identify` for example)
	**/
	var scope : Dynamic;
};