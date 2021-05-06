package discord_js;

typedef WebSocketOptions = {
	@:optional
	var large_threshold : Float;
	@:optional
	var compress : Bool;
	@:optional
	var intents : BitFieldResolvable<IntentsString>;
	@:optional
	var properties : WebSocketProperties;
};