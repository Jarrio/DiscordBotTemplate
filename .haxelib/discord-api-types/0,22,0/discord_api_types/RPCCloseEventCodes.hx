package discord_api_types;

/**
	https://discord.com/developers/docs/topics/opcodes-and-status-codes#rpc-rpc-close-event-codes
**/
@:enum extern abstract RPCCloseEventCodes(Int) from Int to Int {
	var InvalidClientId = 4000;
	var InvalidOrigin = 4001;
	var RateLimited = 4002;
	var TokenRevoked = 4003;
	var InvalidVersion = 4004;
	var InvalidEncoding = 4005;
}