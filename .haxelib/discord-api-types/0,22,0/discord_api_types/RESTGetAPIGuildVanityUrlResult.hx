package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#get-guild-vanity-url
**/
typedef RESTGetAPIGuildVanityUrlResult = {
	var code : Null<String>;
	var uses : Float;
};