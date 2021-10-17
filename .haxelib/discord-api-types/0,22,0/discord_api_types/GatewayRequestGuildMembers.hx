package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#request-guild-members
**/
typedef GatewayRequestGuildMembers = {
	var op : Int;
	var d : GatewayRequestGuildMembersData;
};