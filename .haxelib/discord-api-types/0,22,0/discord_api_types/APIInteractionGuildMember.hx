package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#guild-member-object
**/
typedef APIInteractionGuildMember = {
	var permissions : js.html.Permissions;
	var user : Dynamic;
};