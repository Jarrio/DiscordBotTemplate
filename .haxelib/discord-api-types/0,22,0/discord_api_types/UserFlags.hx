package discord_api_types;

/**
	https://discord.com/developers/docs/resources/user#user-object-user-flags
**/
@:enum extern abstract UserFlags(Int) from Int to Int {
	var None = 0;
	var DiscordEmployee = 1;
	var PartneredServerOwner = 2;
	var DiscordHypeSquadEvents = 4;
	var BugHunterLevel1 = 8;
	var HypeSquadHouseBravery = 64;
	var HypeSquadHouseBrilliance = 128;
	var HypeSquadHouseBalance = 256;
	var EarlySupporter = 512;
	var TeamUser = 1024;
	var BugHunterLevel2 = 16384;
	var VerifiedBot = 65536;
	var EarlyVerifiedBotDeveloper = 131072;
	var DiscordCertifiedModerator = 262144;
}