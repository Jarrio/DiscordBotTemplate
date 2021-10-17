package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#update-voice-state
**/
typedef GatewayVoiceStateUpdate = {
	var op : Int;
	var d : GatewayVoiceStateUpdateData;
};