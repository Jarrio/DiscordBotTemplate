package discord_api_types;

/**
	https://discord.com/developers/docs/resources/stage-instance#create-stage-instance
**/
typedef RESTPostAPIStageInstanceJSONBody = {
	/**
		The id of the stage channel
	**/
	var channel_id : Dynamic;
	/**
		The topic of the stage instance (1-120 characters)
	**/
	var topic : String;
	/**
		The privacy level of the stage instance
	**/
	@:optional
	var privacy_level : Dynamic;
};