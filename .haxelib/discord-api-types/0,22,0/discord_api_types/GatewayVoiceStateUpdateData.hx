package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#update-voice-state
**/
typedef GatewayVoiceStateUpdateData = {
	/**
		ID of the guild
	**/
	var guild_id : Dynamic;
	/**
		ID of the voice channel client wants to join (`null` if disconnecting)
	**/
	var channel_id : Dynamic;
	/**
		Is the client muted
	**/
	var self_mute : Bool;
	/**
		Is the client deafened
	**/
	var self_deaf : Bool;
};