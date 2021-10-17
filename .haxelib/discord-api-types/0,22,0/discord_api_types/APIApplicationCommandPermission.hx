package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/slash-commands#application-command-permissions-object-application-command-permissions-structure
**/
typedef APIApplicationCommandPermission = {
	/**
		The id of the role or user
	**/
	var id : Dynamic;
	/**
		Role or user
	**/
	var type : ApplicationCommandPermissionType;
	/**
		`true` to allow, `false`, to disallow
	**/
	var permission : Bool;
};