package js.html;

typedef Transformer<I, O> = {
	@:optional
	dynamic function flush(controller:TransformStreamDefaultController<O>):ts.AnyOf2<ts.Undefined, js.lib.PromiseLike<ts.Undefined>>;
	@:optional
	var readableType : Any;
	@:optional
	dynamic function start(controller:TransformStreamDefaultController<O>):ts.AnyOf2<ts.Undefined, js.lib.PromiseLike<ts.Undefined>>;
	@:optional
	dynamic function transform(chunk:I, controller:TransformStreamDefaultController<O>):ts.AnyOf2<ts.Undefined, js.lib.PromiseLike<ts.Undefined>>;
	@:optional
	var writableType : Any;
};