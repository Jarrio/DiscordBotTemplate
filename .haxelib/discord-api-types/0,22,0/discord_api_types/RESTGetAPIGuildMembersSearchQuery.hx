package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#search-guild-members
**/
typedef RESTGetAPIGuildMembersSearchQuery = {
	/**
		Query string to match username(s) and nickname(s) against
	**/
	var query : String;
	/**
		Max number of members to return (1-1000)
	**/
	@:optional
	var limit : Float;
};