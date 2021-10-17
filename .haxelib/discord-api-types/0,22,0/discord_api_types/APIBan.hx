package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#ban-object
**/
typedef APIBan = {
	/**
		The reason for the ban
	**/
	var reason : Null<String>;
	/**
		The banned user
	**/
	var user : Dynamic;
};