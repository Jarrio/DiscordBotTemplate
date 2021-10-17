package discord_api_types;

/**
	https://discord.com/developers/docs/resources/stage-instance#stage-instance-object
**/
typedef APIStageInstance = {
	/**
		The id of the stage instance
	**/
	var id : Dynamic;
	/**
		The guild id of the associated stage channel
	**/
	var guild_id : Dynamic;
	/**
		The id of the associated stage channel
	**/
	var channel_id : Dynamic;
	/**
		The topic of the stage instance (1-120 characters)
	**/
	var topic : String;
	/**
		The privacy level of the stage instance
		
		See https://discord.com/developers/docs/resources/stage-instance#stage-instance-object-privacy-level
	**/
	var privacy_level : StageInstancePrivacyLevel;
	/**
		Whether or not stage discovery is disabled
	**/
	var discoverable_disabled : Bool;
};