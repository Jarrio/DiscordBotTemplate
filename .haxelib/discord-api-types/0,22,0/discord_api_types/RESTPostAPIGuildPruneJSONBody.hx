package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#begin-guild-prune
**/
typedef RESTPostAPIGuildPruneJSONBody = {
	/**
		Number of days to count prune for (1 or more)
	**/
	@:optional
	var days : Float;
	/**
		Whether `pruned is returned, discouraged for large guilds
	**/
	@:optional
	var compute_prune_count : Bool;
	/**
		Role(s) to include
	**/
	@:optional
	var include_roles : Array<Dynamic>;
};