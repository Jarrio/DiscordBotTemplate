package discord_api_types;

/**
	https://discord.com/developers/docs/resources/application#application-object-application-flags
**/
@:enum extern abstract ApplicationFlags(Int) from Int to Int {
	var ManagedEmoji = 4;
	var GroupDMCreate = 16;
	var RPCHasConnected = 2048;
	var GatewayPresence = 4096;
	var GatewayPresenceLimited = 8192;
	var GatewayGuildMembers = 16384;
	var GatewayGuildMembersLimited = 32768;
	var VerificationPendingGuildLimit = 65536;
	var Embedded = 131072;
}