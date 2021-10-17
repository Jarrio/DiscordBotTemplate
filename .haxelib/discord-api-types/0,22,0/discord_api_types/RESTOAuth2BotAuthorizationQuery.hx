package discord_api_types;

/**
	https://discord.com/developers/docs/topics/oauth2#bot-authorization-flow-bot-auth-parameters
**/
typedef RESTOAuth2BotAuthorizationQuery = {
	/**
		Your app's client id
	**/
	var client_id : Dynamic;
	/**
		Needs to include bot for the bot flow
	**/
	var scope : Dynamic;
};