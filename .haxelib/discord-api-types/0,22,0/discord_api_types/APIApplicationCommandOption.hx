package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/slash-commands#application-command-object-application-command-option-structure
**/
typedef APIApplicationCommandOption = ts.AnyOf3<APIApplicationCommandArgumentOptions, APIApplicationCommandSubCommandOptions, APIApplicationCommandOptionBase>;