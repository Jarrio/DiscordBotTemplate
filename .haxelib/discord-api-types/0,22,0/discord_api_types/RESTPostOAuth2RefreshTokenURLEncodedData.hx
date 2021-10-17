package discord_api_types;

/**
	https://discord.com/developers/docs/topics/oauth2#authorization-code-grant-refresh-token-exchange-example
**/
typedef RESTPostOAuth2RefreshTokenURLEncodedData = {
	var client_id : Dynamic;
	var client_secret : String;
	var grant_type : String;
	var refresh_token : String;
};