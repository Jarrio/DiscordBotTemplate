package discord_api_types;

/**
	https://discord.com/developers/docs/topics/oauth2#authorization-code-grant
**/
typedef RESTOAuth2AuthorizationQuery = {
	var response_type : String;
	var client_id : Dynamic;
	var scope : String;
	@:optional
	var redirect_uri : String;
	@:optional
	var state : String;
	@:optional
	var prompt : String;
};