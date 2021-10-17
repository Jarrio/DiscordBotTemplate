package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#list-guild-members
**/
typedef RESTGetAPIGuildMembersQuery = {
	/**
		Max number of members to return (1-1000)
	**/
	@:optional
	var limit : Float;
	/**
		The highest user id in the previous page
	**/
	@:optional
	var after : Dynamic;
};