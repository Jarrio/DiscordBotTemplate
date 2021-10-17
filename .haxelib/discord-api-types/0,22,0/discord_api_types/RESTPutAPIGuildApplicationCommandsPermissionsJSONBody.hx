package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/slash-commands#batch-edit-application-command-permissions
**/
typedef RESTPutAPIGuildApplicationCommandsPermissionsJSONBody = Array<{
	var id : Dynamic;
	var permissions : Dynamic;
}>;