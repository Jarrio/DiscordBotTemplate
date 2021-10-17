package discord_api_types;

/**
	https://discord.com/developers/docs/topics/opcodes-and-status-codes#rpc-rpc-error-codes
**/
@:enum extern abstract RPCErrorCodes(Int) from Int to Int {
	var UnknownError = 1000;
	var InvalidPayload = 4000;
	var InvalidCommand = 4002;
	var InvalidGuild = 4003;
	var InvalidEvent = 4004;
	var InvalidChannel = 4005;
	var InvalidPermissions = 4006;
	var InvalidClientId = 4007;
	var InvalidOrigin = 4008;
	var InvalidToken = 4009;
	var InvalidUser = 4010;
	var OAuth2Error = 5000;
	var SelectChannelTimedOut = 5001;
	var GetGuildTimedOut = 5002;
	var SelectVoiceForceRequired = 5003;
	var CaptureShortcutAlreadyListening = 5004;
}