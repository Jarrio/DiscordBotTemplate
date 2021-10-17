package node.stream;

typedef WritableOptions = {
	@:optional
	var decodeStrings : Bool;
	@:optional
	var defaultEncoding : global.BufferEncoding;
	@:optional
	function write(chunk:Dynamic, encoding:global.BufferEncoding, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	function writev(chunks:Array<{ var chunk : Dynamic; var encoding : global.BufferEncoding; }>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	@:native("final")
	function final_(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	var emitClose : Bool;
	@:optional
	var highWaterMark : Float;
	@:optional
	var objectMode : Bool;
	@:optional
	function construct(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	function destroy(error:Null<js.lib.Error>, callback:(error:Null<js.lib.Error>) -> Void):Void;
	@:optional
	var autoDestroy : Bool;
	/**
		When provided the corresponding `AbortController` can be used to cancel an asynchronous action.
	**/
	@:optional
	var signal : js.html.AbortSignal;
};