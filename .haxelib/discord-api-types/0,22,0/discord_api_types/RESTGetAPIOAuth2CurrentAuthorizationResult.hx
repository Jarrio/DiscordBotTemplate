package discord_api_types;

/**
	https://discord.com/developers/docs/topics/oauth2#get-current-authorization-information
**/
typedef RESTGetAPIOAuth2CurrentAuthorizationResult = {
	/**
		the current application
	**/
	var application : Dynamic;
	/**
		the scopes the user has authorized the application for
	**/
	var scopes : Array<Dynamic>;
	/**
		when the access token expires
	**/
	var expires : String;
	/**
		the user who has authorized, if the user has authorized with the `identify` scope
	**/
	@:optional
	var user : Dynamic;
};