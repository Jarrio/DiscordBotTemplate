package discord_api_types;

/**
	https://discord.com/developers/docs/topics/oauth2#implicit-grant
**/
typedef RESTOAuth2ImplicitAuthorizationQuery = {
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