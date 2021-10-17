package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/slash-commands#applicationcommandpermissiontype
**/
@:enum extern abstract ApplicationCommandPermissionType(Int) from Int to Int {
	var Role = 1;
	var User = 2;
}