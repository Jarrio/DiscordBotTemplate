package js.html;

typedef UnderlyingSink<W> = {
	@:optional
	dynamic function abort(reason:Dynamic):ts.AnyOf2<ts.Undefined, js.lib.PromiseLike<ts.Undefined>>;
	@:optional
	dynamic function close():ts.AnyOf2<ts.Undefined, js.lib.PromiseLike<ts.Undefined>>;
	@:optional
	dynamic function start(controller:WritableStreamDefaultController):ts.AnyOf2<ts.Undefined, js.lib.PromiseLike<ts.Undefined>>;
	@:optional
	var type : Any;
	@:optional
	dynamic function write(chunk:W, controller:WritableStreamDefaultController):ts.AnyOf2<ts.Undefined, js.lib.PromiseLike<ts.Undefined>>;
};