package discord_js;

typedef ReactionCollectorOptions = {
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