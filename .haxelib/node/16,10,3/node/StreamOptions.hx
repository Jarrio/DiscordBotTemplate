package node;

typedef StreamOptions = {
	@:optional
	var flags : String;
	@:optional
	var encoding : global.BufferEncoding;
	@:optional
	var fd : ts.AnyOf2<Float, node.fs.promises.FileHandle>;
	@:optional
	var mode : Float;
	@:optional
	var autoClose : Bool;
	@:optional
	var emitClose : Bool;
	@:optional
	var start : Float;
	@:optional
	var highWaterMark : Float;
};