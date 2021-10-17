package discord_api_types;

/**
	https://discord.com/developers/docs/topics/oauth2#implicit-grant-redirect-url-example
**/
typedef RESTOAuth2ImplicitAuthorizationURLFragmentResult = {
	var access_token : String;
	var token_type : String;
	var expires_in : Float;
	var scope : String;
};