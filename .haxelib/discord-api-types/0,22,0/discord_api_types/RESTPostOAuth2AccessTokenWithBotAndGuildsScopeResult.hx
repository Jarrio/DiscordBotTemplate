package discord_api_types;

/**
	https://discord.com/developers/docs/topics/oauth2#advanced-bot-authorization-extended-bot-authorization-access-token-example
**/
typedef RESTPostOAuth2AccessTokenWithBotAndGuildsScopeResult = {
	var access_token : String;
	var token_type : String;
	var expires_in : Float;
	var refresh_token : String;
	var scope : String;
	var guild : Dynamic;
};