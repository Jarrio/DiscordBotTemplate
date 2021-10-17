package discord_api_types;

typedef RESTPatchAPIGuildVoiceStateUserJSONBody = {
	/**
		The id of the channel the user is currently in
	**/
	var channel_id : Dynamic;
	/**
		Toggles the user's suppress state
	**/
	@:optional
	var suppress : Bool;
};