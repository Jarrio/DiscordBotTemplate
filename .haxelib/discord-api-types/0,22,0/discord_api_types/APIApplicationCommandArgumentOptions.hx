package discord_api_types;

/**
	This type is exported as a way to make it stricter for you when you're writing your commands
	
	In contrast to `APIApplicationCommandSubCommandOptions`, these types cannot have an `options` array,
	but they can have a `choices` one
**/
typedef APIApplicationCommandArgumentOptions = {
	var type : Int;
	@:optional
	var choices : Array<APIApplicationCommandOptionChoice>;
	var name : String;
	var description : String;
	@:optional
	@:native("default")
	var default_ : Bool;
	@:optional
	var required : Bool;
};