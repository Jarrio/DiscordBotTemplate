package discord_api_types;

/**
	https://discord.com/developers/docs/resources/stage-instance#update-stage-instance
**/
typedef RESTPatchAPIStageInstanceJSONBody = {
	/**
		The topic of the stage instance (1-120 characters)
	**/
	@:optional
	var topic : String;
	/**
		The privacy level of the stage instance
	**/
	@:optional
	var privacy_level : Dynamic;
};