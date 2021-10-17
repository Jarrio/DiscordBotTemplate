package discord_api_types;

/**
	https://discord.com/developers/docs/resources/user#get-current-user-guilds
**/
typedef RESTGetAPICurrentUserGuildsQuery = {
	/**
		Get guilds before this guild ID
	**/
	@:optional
	var before : Dynamic;
	/**
		Get guilds after this guild ID
	**/
	@:optional
	var after : Dynamic;
	/**
		Max number of guilds to return (1-100)
	**/
	@:optional
	var limit : Float;
};