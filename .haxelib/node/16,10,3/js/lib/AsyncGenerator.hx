package js.lib;

typedef AsyncGenerator<T, TReturn, TNext> = {
	function next(args:haxe.extern.Rest<Any>):js.lib.Promise<IteratorResult<T, TReturn>>;
	@:native("return")
	function return_(value:ts.AnyOf2<PromiseLike<TReturn>, TReturn>):js.lib.Promise<IteratorResult<T, TReturn>>;
	@:native("throw")
	function throw_(e:Dynamic):js.lib.Promise<IteratorResult<T, TReturn>>;
};