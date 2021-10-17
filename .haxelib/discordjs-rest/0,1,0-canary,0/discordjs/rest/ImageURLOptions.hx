package discordjs.rest;

typedef ImageURLOptions = {
	@:optional
	var extension : String;
	@:optional
	var size : Int;
	@:optional
	@:native("dynamic")
	var dynamic_ : Bool;
};