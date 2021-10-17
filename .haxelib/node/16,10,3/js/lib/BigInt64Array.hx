package js.lib;

/**
	A typed array of 64-bit signed integer values. The contents are initialized to 0. If the
	requested number of bytes could not be allocated, an exception is raised.
**/
@:native("BigInt64Array") extern class BigInt64Array {
	@:overload(function(array:Iterable<BigInt>):BigInt64Array { })
	@:overload(function(buffer:ts.AnyOf2<js.lib.ArrayBuffer, SharedArrayBuffer>, ?byteOffset:Float, ?length:Float):BigInt64Array { })
	function new(?length:Float);
	/**
		The size in bytes of each element in the array.
	**/
	final BYTES_PER_ELEMENT : Float;
	/**
		The ArrayBuffer instance referenced by the array.
	**/
	final buffer : ts.AnyOf2<js.lib.ArrayBuffer, SharedArrayBuffer>;
	/**
		The length in bytes of the array.
	**/
	final byteLength : Float;
	/**
		The offset in bytes of the array.
	**/
	final byteOffset : Float;
	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
	**/
	function copyWithin(target:Float, start:Float, ?end:Float):BigInt64Array;
	/**
		Yields index, value pairs for every entry in the array.
	**/
	function entries():IterableIterator<ts.Tuple2<Float, BigInt>>;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	function every(callbackfn:(value:BigInt, index:Float, array:BigInt64Array) -> Bool, ?thisArg:Dynamic):Bool;
	/**
		Returns the this object after filling the section identified by start and end with value
	**/
	function fill(value:BigInt, ?start:Float, ?end:Float):BigInt64Array;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	function filter(callbackfn:(value:BigInt, index:Float, array:BigInt64Array) -> Dynamic, ?thisArg:Dynamic):BigInt64Array;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	function find(predicate:(value:BigInt, index:Float, array:BigInt64Array) -> Bool, ?thisArg:Dynamic):Null<BigInt>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:BigInt, index:Float, array:BigInt64Array) -> Bool, ?thisArg:Dynamic):Float;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:BigInt, index:Float, array:BigInt64Array) -> Void, ?thisArg:Dynamic):Void;
	/**
		Determines whether an array includes a certain element, returning true or false as appropriate.
	**/
	function includes(searchElement:BigInt, ?fromIndex:Float):Bool;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(searchElement:BigInt, ?fromIndex:Float):Float;
	/**
		Adds all the elements of an array separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Yields each index in the array.
	**/
	function keys():IterableIterator<Float>;
	/**
		Returns the index of the last occurrence of a value in an array.
	**/
	function lastIndexOf(searchElement:BigInt, ?fromIndex:Float):Float;
	/**
		The length of the array.
	**/
	final length : Float;
	/**
		Calls a defined callback function on each element of an array, and returns an array that
		contains the results.
	**/
	function map(callbackfn:(value:BigInt, index:Float, array:BigInt64Array) -> BigInt, ?thisArg:Dynamic):BigInt64Array;
	/**
		Calls the specified callback function for all the elements in an array. The return value of
		the callback function is the accumulated result, and is provided as an argument in the next
		call to the callback function.
		
		Calls the specified callback function for all the elements in an array. The return value of
		the callback function is the accumulated result, and is provided as an argument in the next
		call to the callback function.
	**/
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:BigInt, currentIndex:Float, array:BigInt64Array) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:BigInt, currentValue:BigInt, currentIndex:Float, array:BigInt64Array) -> BigInt):BigInt;
	/**
		Calls the specified callback function for all the elements in an array, in descending order.
		The return value of the callback function is the accumulated result, and is provided as an
		argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array, in descending order.
		The return value of the callback function is the accumulated result, and is provided as an
		argument in the next call to the callback function.
	**/
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:BigInt, currentIndex:Float, array:BigInt64Array) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:BigInt, currentValue:BigInt, currentIndex:Float, array:BigInt64Array) -> BigInt):BigInt;
	/**
		Reverses the elements in the array.
	**/
	function reverse():BigInt64Array;
	/**
		Sets a value or an array of values.
	**/
	function set(array:ArrayLike<BigInt>, ?offset:Float):Void;
	/**
		Returns a section of an array.
	**/
	function slice(?start:Float, ?end:Float):BigInt64Array;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(callbackfn:(value:BigInt, index:Float, array:BigInt64Array) -> Bool, ?thisArg:Dynamic):Bool;
	/**
		Sorts the array.
	**/
	function sort(?compareFn:(a:BigInt, b:BigInt) -> ts.AnyOf2<Float, BigInt>):BigInt64Array;
	/**
		Gets a new BigInt64Array view of the ArrayBuffer store for this array, referencing the elements
		at begin, inclusive, up to end, exclusive.
	**/
	function subarray(?begin:Float, ?end:Float):BigInt64Array;
	/**
		Converts the array to a string by using the current locale.
	**/
	function toLocaleString():String;
	/**
		Returns a string representation of the array.
	**/
	function toString():String;
	/**
		Yields each value in the array.
	**/
	function values():IterableIterator<BigInt>;
	/**
		Takes an integer value and returns the item at that index,
		allowing for positive and negative integers.
		Negative integers count back from the last item in the array.
	**/
	function at(index:Float):Null<BigInt>;
	static final prototype : BigInt64Array;
	/**
		The size in bytes of each element in the array.
	**/
	@:native("BYTES_PER_ELEMENT")
	static final BYTES_PER_ELEMENT_ : Float;
	/**
		Returns a new array from a set of elements.
	**/
	static function of(items:haxe.extern.Rest<BigInt>):BigInt64Array;
	/**
		Creates an array from an array-like or iterable object.
	**/
	@:overload(function<U>(arrayLike:ArrayLike<U>, mapfn:(v:U, k:Float) -> BigInt, ?thisArg:Dynamic):BigInt64Array { })
	static function from(arrayLike:ArrayLike<BigInt>):BigInt64Array;
}