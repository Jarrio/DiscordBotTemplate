package discord_api_types;

/**
	This type is exported as a way to make it stricter for you when you're writing your commands
	
	If the option is a `SUB_COMMAND` or `SUB_COMMAND_GROUP` type, this nested options will be the parameters
**/
typedef APIApplicationCommandSubCommandOptions = {
	var type : Int;
	@:optional
	var options : Array<APIApplicationCommandOption>;
	var name : String;
	var description : String;
	@:optional
	@:native("default")
	var default_ : Bool;
	@:optional
	var required : Bool;
};