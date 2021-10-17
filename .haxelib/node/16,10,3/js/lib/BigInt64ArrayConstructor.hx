package js.lib;

typedef BigInt64ArrayConstructor = {
	final prototype : BigInt64Array;
	/**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float;
	/**
		Returns a new array from a set of elements.
	**/
	function of(items:haxe.extern.Rest<BigInt>):BigInt64Array;
	/**
		Creates an array from an array-like or iterable object.
	**/
	@:overload(function<U>(arrayLike:ArrayLike<U>, mapfn:(v:U, k:Float) -> BigInt, ?thisArg:Dynamic):BigInt64Array { })
	function from(arrayLike:ArrayLike<BigInt>):BigInt64Array;
};