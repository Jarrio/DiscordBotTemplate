package discord_api_types;

/**
	https://discord.com/developers/docs/topics/oauth2#authorization-code-grant-redirect-url-example
**/
typedef RESTPostOAuth2AccessTokenURLEncodedData = {
	var client_id : Dynamic;
	var client_secret : String;
	var grant_type : String;
	var code : String;
	@:optional
	var redirect_uri : String;
};