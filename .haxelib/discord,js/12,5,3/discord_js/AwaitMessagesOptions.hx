package discord_js;

typedef AwaitMessagesOptions = {
	@:optional
	var errors : Array<String>;
	@:optional
	var max : Float;
	@:optional
	var maxProcessed : Float;
	@:optional
	var time : Float;
	@:optional
	var idle : Float;
	@:optional
	var dispose : Bool;
};