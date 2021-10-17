package js.lib;

typedef AsyncIterableIterator<T> = {
	function next(args:haxe.extern.Rest<Any>):js.lib.Promise<IteratorResult<T, Dynamic>>;
	@:optional
	@:native("return")
	function return_(?value:Dynamic):js.lib.Promise<IteratorResult<T, Dynamic>>;
	@:optional
	@:native("throw")
	function throw_(?e:Dynamic):js.lib.Promise<IteratorResult<T, Dynamic>>;
};