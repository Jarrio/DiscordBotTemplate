package discord_api_types;

typedef APIApplicationCommandOptionBase = {
	var type : Int;
	var name : String;
	var description : String;
	@:optional
	@:native("default")
	var default_ : Bool;
	@:optional
	var required : Bool;
};