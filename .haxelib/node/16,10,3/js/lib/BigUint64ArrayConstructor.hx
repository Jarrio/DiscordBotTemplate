package js.lib;

typedef BigUint64ArrayConstructor = {
	final prototype : BigUint64Array;
	/**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float;
	/**
		Returns a new array from a set of elements.
	**/
	function of(items:haxe.extern.Rest<BigInt>):BigUint64Array;
	/**
		Creates an array from an array-like or iterable object.
	**/
	@:overload(function<U>(arrayLike:ArrayLike<U>, mapfn:(v:U, k:Float) -> BigInt, ?thisArg:Dynamic):BigUint64Array { })
	function from(arrayLike:ArrayLike<BigInt>):BigUint64Array;
};