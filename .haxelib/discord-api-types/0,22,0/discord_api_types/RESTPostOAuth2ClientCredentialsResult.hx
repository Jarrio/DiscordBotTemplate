package discord_api_types;

typedef RESTPostOAuth2ClientCredentialsResult = {
	var access_token : String;
	var token_type : String;
	var expires_in : Float;
	var scope : String;
};