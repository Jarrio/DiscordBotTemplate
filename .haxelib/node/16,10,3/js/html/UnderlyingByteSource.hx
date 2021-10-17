package js.html;

typedef UnderlyingByteSource = {
	@:optional
	var autoAllocateChunkSize : Float;
	@:optional
	dynamic function cancel(reason:Dynamic):ts.AnyOf2<ts.Undefined, js.lib.PromiseLike<ts.Undefined>>;
	@:optional
	dynamic function pull(controller:ReadableByteStreamController):ts.AnyOf2<ts.Undefined, js.lib.PromiseLike<ts.Undefined>>;
	@:optional
	dynamic function start(controller:ReadableByteStreamController):ts.AnyOf2<ts.Undefined, js.lib.PromiseLike<ts.Undefined>>;
	var type : String;
};