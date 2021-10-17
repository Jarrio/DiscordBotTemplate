package js.html;

typedef UnderlyingSource<R> = {
	@:optional
	dynamic function cancel(reason:Dynamic):ts.AnyOf2<ts.Undefined, js.lib.PromiseLike<ts.Undefined>>;
	@:optional
	dynamic function pull(controller:ReadableStreamDefaultController<R>):ts.AnyOf2<ts.Undefined, js.lib.PromiseLike<ts.Undefined>>;
	@:optional
	dynamic function start(controller:ReadableStreamDefaultController<R>):ts.AnyOf2<ts.Undefined, js.lib.PromiseLike<ts.Undefined>>;
	@:optional
	var type : Any;
};