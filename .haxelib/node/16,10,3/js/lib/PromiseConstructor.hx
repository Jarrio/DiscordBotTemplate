package js.lib;

typedef PromiseConstructor = {
	/**
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
	**/
	@:overload(function<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(values:ts.Tuple10<ts.AnyOf2<PromiseLike<T1>, T1>, ts.AnyOf2<PromiseLike<T2>, T2>, ts.AnyOf2<PromiseLike<T3>, T3>, ts.AnyOf2<PromiseLike<T4>, T4>, ts.AnyOf2<PromiseLike<T5>, T5>, ts.AnyOf2<PromiseLike<T6>, T6>, ts.AnyOf2<PromiseLike<T7>, T7>, ts.AnyOf2<PromiseLike<T8>, T8>, ts.AnyOf2<PromiseLike<T9>, T9>, ts.AnyOf2<PromiseLike<T10>, T10>>):js.lib.Promise<ts.Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>> { })
	@:overload(function<T1, T2, T3, T4, T5, T6, T7, T8, T9>(values:ts.Tuple9<ts.AnyOf2<PromiseLike<T1>, T1>, ts.AnyOf2<PromiseLike<T2>, T2>, ts.AnyOf2<PromiseLike<T3>, T3>, ts.AnyOf2<PromiseLike<T4>, T4>, ts.AnyOf2<PromiseLike<T5>, T5>, ts.AnyOf2<PromiseLike<T6>, T6>, ts.AnyOf2<PromiseLike<T7>, T7>, ts.AnyOf2<PromiseLike<T8>, T8>, ts.AnyOf2<PromiseLike<T9>, T9>>):js.lib.Promise<ts.Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>> { })
	@:overload(function<T1, T2, T3, T4, T5, T6, T7, T8>(values:ts.Tuple8<ts.AnyOf2<PromiseLike<T1>, T1>, ts.AnyOf2<PromiseLike<T2>, T2>, ts.AnyOf2<PromiseLike<T3>, T3>, ts.AnyOf2<PromiseLike<T4>, T4>, ts.AnyOf2<PromiseLike<T5>, T5>, ts.AnyOf2<PromiseLike<T6>, T6>, ts.AnyOf2<PromiseLike<T7>, T7>, ts.AnyOf2<PromiseLike<T8>, T8>>):js.lib.Promise<ts.Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>> { })
	@:overload(function<T1, T2, T3, T4, T5, T6, T7>(values:ts.Tuple7<ts.AnyOf2<PromiseLike<T1>, T1>, ts.AnyOf2<PromiseLike<T2>, T2>, ts.AnyOf2<PromiseLike<T3>, T3>, ts.AnyOf2<PromiseLike<T4>, T4>, ts.AnyOf2<PromiseLike<T5>, T5>, ts.AnyOf2<PromiseLike<T6>, T6>, ts.AnyOf2<PromiseLike<T7>, T7>>):js.lib.Promise<ts.Tuple7<T1, T2, T3, T4, T5, T6, T7>> { })
	@:overload(function<T1, T2, T3, T4, T5, T6>(values:ts.Tuple6<ts.AnyOf2<PromiseLike<T1>, T1>, ts.AnyOf2<PromiseLike<T2>, T2>, ts.AnyOf2<PromiseLike<T3>, T3>, ts.AnyOf2<PromiseLike<T4>, T4>, ts.AnyOf2<PromiseLike<T5>, T5>, ts.AnyOf2<PromiseLike<T6>, T6>>):js.lib.Promise<ts.Tuple6<T1, T2, T3, T4, T5, T6>> { })
	@:overload(function<T1, T2, T3, T4, T5>(values:ts.Tuple5<ts.AnyOf2<PromiseLike<T1>, T1>, ts.AnyOf2<PromiseLike<T2>, T2>, ts.AnyOf2<PromiseLike<T3>, T3>, ts.AnyOf2<PromiseLike<T4>, T4>, ts.AnyOf2<PromiseLike<T5>, T5>>):js.lib.Promise<ts.Tuple5<T1, T2, T3, T4, T5>> { })
	@:overload(function<T1, T2, T3, T4>(values:ts.Tuple4<ts.AnyOf2<PromiseLike<T1>, T1>, ts.AnyOf2<PromiseLike<T2>, T2>, ts.AnyOf2<PromiseLike<T3>, T3>, ts.AnyOf2<PromiseLike<T4>, T4>>):js.lib.Promise<ts.Tuple4<T1, T2, T3, T4>> { })
	@:overload(function<T1, T2, T3>(values:ts.Tuple3<ts.AnyOf2<PromiseLike<T1>, T1>, ts.AnyOf2<PromiseLike<T2>, T2>, ts.AnyOf2<PromiseLike<T3>, T3>>):js.lib.Promise<ts.Tuple3<T1, T2, T3>> { })
	@:overload(function<T1, T2>(values:ts.Tuple2<ts.AnyOf2<PromiseLike<T1>, T1>, ts.AnyOf2<PromiseLike<T2>, T2>>):js.lib.Promise<ts.Tuple2<T1, T2>> { })
	@:overload(function<T>(values:haxe.ds.ReadOnlyArray<ts.AnyOf2<PromiseLike<T>, T>>):js.lib.Promise<Array<T>> { })
	function all<TAll>(values:Iterable<ts.AnyOf2<PromiseLike<TAll>, TAll>>):js.lib.Promise<Array<TAll>>;
	/**
		Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
		or rejected.
		
		Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
		or rejected.
		
		Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
		or rejected.
	**/
	@:overload(function<T>(values:haxe.ds.ReadOnlyArray<T>):js.lib.Promise<Dynamic> { })
	@:overload(function<T>(values:Iterable<T>):js.lib.Promise<Dynamic> { })
	function race<T>(values:Iterable<ts.AnyOf2<PromiseLike<T>, T>>):js.lib.Promise<T>;
	/**
		A reference to the prototype.
	**/
	final prototype : js.lib.Promise<Dynamic>;
	/**
		Creates a new rejected promise for the provided reason.
	**/
	function reject<T>(?reason:Dynamic):js.lib.Promise<T>;
	/**
		Creates a new resolved promise for the provided value.
		
		Creates a new resolved promise .
	**/
	@:overload(function():js.lib.Promise<ts.Undefined> { })
	function resolve<T>(value:ts.AnyOf2<PromiseLike<T>, T>):js.lib.Promise<T>;
};