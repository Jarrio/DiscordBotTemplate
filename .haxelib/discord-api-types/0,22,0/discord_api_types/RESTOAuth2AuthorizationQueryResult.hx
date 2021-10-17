package discord_api_types;

/**
	https://discord.com/developers/docs/topics/oauth2#authorization-code-grant-redirect-url-example
**/
typedef RESTOAuth2AuthorizationQueryResult = {
	var code : String;
	@:optional
	var state : String;
};