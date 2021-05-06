package discord_js;

typedef AwaitReactionsOptions = {
	@:optional
	var errors : Array<String>;
	@:optional
	var max : Float;
	@:optional
	var maxEmojis : Float;
	@:optional
	var maxUsers : Float;
	@:optional
	var time : Float;
	@:optional
	var idle : Float;
	@:optional
	var dispose : Bool;
};