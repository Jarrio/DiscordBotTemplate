package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#unavailable-guild-object
**/
typedef APIUnavailableGuild = {
	/**
		Guild id
	**/
	var id : Dynamic;
	/**
		`true` if this guild is unavailable due to an outage
	**/
	var unavailable : Bool;
};