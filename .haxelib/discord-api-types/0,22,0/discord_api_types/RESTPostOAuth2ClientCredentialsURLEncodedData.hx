package discord_api_types;

/**
	https://discord.com/developers/docs/topics/oauth2#client-credentials-grant
**/
typedef RESTPostOAuth2ClientCredentialsURLEncodedData = {
	var grant_type : String;
	var scope : String;
};