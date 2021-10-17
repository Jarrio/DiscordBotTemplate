package discord_api_types;

/**
	https://discord.com/developers/docs/topics/oauth2#webhooks-webhook-token-response-example
**/
typedef RESTPostOAuth2AccessTokenWithBotAndWebhookIncomingScopeResult = {
	var access_token : String;
	var token_type : String;
	var expires_in : Float;
	var refresh_token : String;
	var scope : String;
	var webhook : Dynamic;
};