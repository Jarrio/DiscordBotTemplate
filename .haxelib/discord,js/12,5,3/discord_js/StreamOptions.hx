package discord_js;

typedef StreamOptions = {
	@:optional
	var type : StreamType;
	@:optional
	var seek : Float;
	@:optional
	var volume : ts.AnyOf2<Float, Bool>;
	@:optional
	var plp : Float;
	@:optional
	var fec : Bool;
	@:optional
	var bitrate : ts.AnyOf2<Float, String>;
	@:optional
	var highWaterMark : Float;
};