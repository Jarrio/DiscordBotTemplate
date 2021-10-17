package node.crypto;

typedef CipherGCMOptions = {
	@:optional
	var authTagLength : Float;
	@:optional
	function construct(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	function read(size:Float):Void;
	@:optional
	function write(chunk:Dynamic, encoding:global.BufferEncoding, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	function writev(chunks:Array<{ var chunk : Dynamic; var encoding : global.BufferEncoding; }>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	@:native("final")
	function final_(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	function destroy(error:Null<js.lib.Error>, callback:(error:Null<js.lib.Error>) -> Void):Void;
	@:optional
	function transform(chunk:Dynamic, encoding:global.BufferEncoding, callback:node.stream.TransformCallback):Void;
	@:optional
	function flush(callback:node.stream.TransformCallback):Void;
	@:optional
	var allowHalfOpen : Bool;
	@:optional
	var readableObjectMode : Bool;
	@:optional
	var writableObjectMode : Bool;
	@:optional
	var readableHighWaterMark : Float;
	@:optional
	var writableHighWaterMark : Float;
	@:optional
	var writableCorked : Float;
	@:optional
	var encoding : global.BufferEncoding;
	@:optional
	var emitClose : Bool;
	@:optional
	var highWaterMark : Float;
	@:optional
	var objectMode : Bool;
	@:optional
	var autoDestroy : Bool;
	/**
		When provided the corresponding `AbortController` can be used to cancel an asynchronous action.
	**/
	@:optional
	var signal : js.html.AbortSignal;
	@:optional
	var decodeStrings : Bool;
	@:optional
	var defaultEncoding : global.BufferEncoding;
};