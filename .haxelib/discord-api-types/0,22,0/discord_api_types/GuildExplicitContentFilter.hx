package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#guild-object-explicit-content-filter-level
**/
@:enum extern abstract GuildExplicitContentFilter(Int) from Int to Int {
	var Disabled = 0;
	var MembersWithoutRoles = 1;
	var AllMembers = 2;
}