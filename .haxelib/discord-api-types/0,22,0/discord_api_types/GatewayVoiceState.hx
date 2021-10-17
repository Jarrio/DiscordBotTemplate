package discord_api_types;

/**
	https://discord.com/developers/docs/resources/voice#voice-state-object
**/
typedef GatewayVoiceState = {
	/**
		The guild id this voice state is for
	**/
	@:optional
	var guild_id : Dynamic;
	/**
		The channel id this user is connected to
	**/
	var channel_id : Dynamic;
	/**
		The user id this voice state is for
	**/
	var user_id : Dynamic;
	/**
		The guild member this voice state is for
		
		See https://discord.com/developers/docs/resources/guild#guild-member-object
	**/
	@:optional
	var member : Dynamic;
	/**
		The session id for this voice state
	**/
	var session_id : String;
	/**
		Whether this user is deafened by the server
	**/
	var deaf : Bool;
	/**
		Whether this user is muted by the server
	**/
	var mute : Bool;
	/**
		Whether this user is locally deafened
	**/
	var self_deaf : Bool;
	/**
		Whether this user is locally muted
	**/
	var self_mute : Bool;
	/**
		Whether this user is streaming using "Go Live"
	**/
	@:optional
	var self_stream : Bool;
	/**
		Whether this user's camera is enabled
	**/
	var self_video : Bool;
	/**
		Whether this user is muted by the current user
	**/
	var suppress : Bool;
	/**
		The time at which the user requested to speak
	**/
	var request_to_speak_timestamp : Null<String>;
};