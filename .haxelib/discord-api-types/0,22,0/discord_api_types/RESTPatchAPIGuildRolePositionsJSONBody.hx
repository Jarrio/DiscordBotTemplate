package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#modify-guild-role-positions
**/
typedef RESTPatchAPIGuildRolePositionsJSONBody = Array<{
	/**
		Role id
	**/
	var id : Dynamic;
	/**
		Sorting position of the role
	**/
	@:optional
	var position : Float;
}>;