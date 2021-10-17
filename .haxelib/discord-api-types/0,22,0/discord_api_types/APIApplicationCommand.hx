package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/slash-commands#application-command-object
**/
typedef APIApplicationCommand = {
	/**
		Unique id of the command
	**/
	var id : Dynamic;
	/**
		Unique id of the parent application
	**/
	var application_id : Dynamic;
	/**
		Guild id of the command, if not global
	**/
	@:optional
	var guild_id : Dynamic;
	/**
		1-32 character name matching `^[\w-]{1,32}$`
	**/
	var name : String;
	/**
		1-100 character description
	**/
	var description : String;
	/**
		The parameters for the command
	**/
	@:optional
	var options : Array<APIApplicationCommandOption>;
	/**
		Whether the command is enabled by default when the app is added to a guild
		
		If missing, this property should be assumed as `true`
	**/
	@:optional
	var default_permission : Bool;
};