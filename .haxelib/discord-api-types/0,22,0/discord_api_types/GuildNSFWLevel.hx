package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#guild-object-guild-nsfw-level
**/
@:enum extern abstract GuildNSFWLevel(Int) from Int to Int {
	var Default = 0;
	var Explicit = 1;
	var Safe = 2;
	var AgeRestricted = 3;
}