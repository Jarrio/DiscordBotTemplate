package discord_api_types;

typedef RESTOAuth2AdvancedBotAuthorizationQueryResult = {
	var code : String;
	@:optional
	var state : String;
	var guild_id : Dynamic;
	var permissions : js.html.Permissions;
};