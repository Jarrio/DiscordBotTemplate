package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#create-guild-ban
**/
typedef RESTPutAPIGuildBanJSONBody = {
	/**
		Number of days to delete messages for (0-7)
	**/
	@:optional
	var delete_message_days : Float;
	/**
		Reason for the ban
	**/
	@:optional
	var reason : String;
};