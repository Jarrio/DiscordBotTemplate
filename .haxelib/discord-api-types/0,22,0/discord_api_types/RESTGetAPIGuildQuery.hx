package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#get-guild
**/
typedef RESTGetAPIGuildQuery = {
	/**
		When `true`, will return approximate member and presence counts for the guild
	**/
	@:optional
	var with_counts : Bool;
};