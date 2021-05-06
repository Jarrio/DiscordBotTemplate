package discord_js;

typedef ActivityOptions = {
	@:optional
	var name : String;
	@:optional
	var url : String;
	@:optional
	var type : ts.AnyOf2<Float, String>;
	@:optional
	var shardID : ts.AnyOf2<Float, haxe.ds.ReadOnlyArray<Float>>;
};