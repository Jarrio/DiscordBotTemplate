package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/slash-commands#application-command-permissions-object-guild-application-command-permissions-structure
**/
typedef APIGuildApplicationCommandPermissions = {
	/**
		The id of the command
	**/
	var id : Dynamic;
	/**
		The id of the application the command belongs to
	**/
	var application_id : Dynamic;
	/**
		The id of the guild
	**/
	var guild_id : Dynamic;
	/**
		The permissions for the command in the guild
	**/
	var permissions : Array<APIApplicationCommandPermission>;
};