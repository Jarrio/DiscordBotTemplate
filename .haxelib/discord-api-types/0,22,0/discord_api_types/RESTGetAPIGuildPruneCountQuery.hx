package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#get-guild-prune-count
**/
typedef RESTGetAPIGuildPruneCountQuery = {
	/**
		Number of days to count prune for (1 or more)
	**/
	@:optional
	var days : Float;
	/**
		Role(s) to include
		
		While this is typed as a string, it represents an array of
		role IDs delimited by commas
		
		See https://discord.com/developers/docs/resources/guild#get-guild-prune-count-query-string-params
	**/
	@:optional
	var include_roles : String;
};