package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#activity-object-activity-flags
**/
@:enum extern abstract ActivityFlags(Int) from Int to Int {
	var Instance = 1;
	var Join = 2;
	var Spectate = 4;
	var JoinRequest = 8;
	var Sync = 16;
	var Play = 32;
}