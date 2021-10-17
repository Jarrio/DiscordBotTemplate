package discord_api_types;

/**
	https://discord.com/developers/docs/resources/user#user-object-premium-types
**/
@:enum extern abstract UserPremiumType(Int) from Int to Int {
	var None = 0;
	var NitroClassic = 1;
	var Nitro = 2;
}