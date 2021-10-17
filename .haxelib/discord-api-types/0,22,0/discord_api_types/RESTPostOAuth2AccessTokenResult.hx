package discord_api_types;

/**
	https://discord.com/developers/docs/topics/oauth2#authorization-code-grant-access-token-response
**/
typedef RESTPostOAuth2AccessTokenResult = {
	var access_token : String;
	var token_type : String;
	var expires_in : Float;
	var refresh_token : String;
	var scope : String;
};