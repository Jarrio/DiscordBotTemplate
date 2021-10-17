package discord_api_types;

/**
	https://discord.com/developers/docs/resources/stage-instance#stage-instance-object-privacy-level
**/
@:enum extern abstract StageInstancePrivacyLevel(Int) from Int to Int {
	/**
		The stage instance is visible publicly, such as on stage discovery
	**/
	var Public = 1;
	/**
		The stage instance is visible to only guild members
	**/
	var GuildOnly = 2;
}