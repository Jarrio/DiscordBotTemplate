package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#guild-object-premium-tier
**/
@:enum extern abstract GuildPremiumTier(Int) from Int to Int {
	var None = 0;
	var Tier1 = 1;
	var Tier2 = 2;
	var Tier3 = 3;
}