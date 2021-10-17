package node.stream;

typedef StreamOptions<T> = {
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