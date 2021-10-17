package js.lib;

typedef IArray<T> = {
	/**
		Gets or sets the length of the array. This is a number one higher than the highest element defined in an array.
	**/
	var length : Float;
	/**
		Returns a string representation of an array.
	**/
	function toString():String;
	/**
		Returns a string representation of an array. The elements are converted to string using their toLocalString methods.
	**/
	function toLocaleString():String;
	/**
		Removes the last element from an array and returns it.
	**/
	function pop():Null<T>;
	/**
		Appends new elements to an array, and returns the new length of the array.
	**/
	function push(items:haxe.extern.Rest<T>):Float;
	/**
		Combines two or more arrays.
		
		Combines two or more arrays.
	**/
	@:overload(function(items:haxe.extern.Rest<ts.AnyOf2<js.lib.ConcatArray<T>, T>>):Array<T> { })
	function concat(items:haxe.extern.Rest<js.lib.ConcatArray<T>>):Array<T>;
	/**
		Adds all the elements of an array separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Reverses the elements in an Array.
	**/
	function reverse():Array<T>;
	/**
		Removes the first element from an array and returns it.
	**/
	function shift():Null<T>;
	/**
		Returns a section of an array.
	**/
	function slice(?start:Float, ?end:Float):Array<T>;
	/**
		Sorts an array.
	**/
	function sort(?compareFn:(a:T, b:T) -> Float):Array<T>;
	/**
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
		
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
	**/
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<T>):Array<T> { })
	function splice(start:Float, ?deleteCount:Float):Array<T>;
	/**
		Inserts new elements at the start of an array.
	**/
	function unshift(items:haxe.extern.Rest<T>):Float;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(searchElement:T, ?fromIndex:Float):Float;
	/**
		Returns the index of the last occurrence of a specified value in an array.
	**/
	function lastIndexOf(searchElement:T, ?fromIndex:Float):Float;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	function every(callbackfn:(value:T, index:Float, array:Array<T>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(callbackfn:(value:T, index:Float, array:Array<T>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:T, index:Float, array:Array<T>) -> Void, ?thisArg:Dynamic):Void;
	/**
		Calls a defined callback function on each element of an array, and returns an array that contains the results.
	**/
	function map<U>(callbackfn:(value:T, index:Float, array:Array<T>) -> U, ?thisArg:Dynamic):Array<U>;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
		
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	@:overload(function(callbackfn:(value:T, index:Float, array:Array<T>) -> Any, ?thisArg:Dynamic):Array<T> { })
	function filter<S>(callbackfn:(value:T, index:Float, array:Array<T>) -> Bool, ?thisArg:Dynamic):Array<S>;
	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:T, currentValue:T, currentIndex:Float, array:Array<T>) -> T, initialValue:T):T { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:T, currentIndex:Float, array:Array<T>) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:T, currentValue:T, currentIndex:Float, array:Array<T>) -> T):T;
	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:T, currentValue:T, currentIndex:Float, array:Array<T>) -> T, initialValue:T):T { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:T, currentIndex:Float, array:Array<T>) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:T, currentValue:T, currentIndex:Float, array:Array<T>) -> T):T;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	@:overload(function(predicate:(value:T, index:Float, obj:Array<T>) -> Any, ?thisArg:Dynamic):Null<T> { })
	function find<S>(predicate:(value:T, index:Float, obj:Array<T>) -> Bool, ?thisArg:Dynamic):Null<S>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:T, index:Float, obj:Array<T>) -> Any, ?thisArg:Dynamic):Float;
	/**
		Returns the this object after filling the section identified by start and end with value
	**/
	function fill(value:T, ?start:Float, ?end:Float):Array<T>;
	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
	**/
	function copyWithin(target:Float, start:Float, ?end:Float):Array<T>;
	/**
		Returns an iterable of key, value pairs for every entry in the array
	**/
	function entries():js.lib.IterableIterator<ts.Tuple2<Float, T>>;
	/**
		Returns an iterable of keys in the array
	**/
	function keys():js.lib.IterableIterator<Float>;
	/**
		Returns an iterable of values in the array
	**/
	function values():js.lib.IterableIterator<T>;
	/**
		Determines whether an array includes a certain element, returning true or false as appropriate.
	**/
	function includes(searchElement:T, ?fromIndex:Float):Bool;
	/**
		Calls a defined callback function on each element of an array. Then, flattens the result into
		a new array.
		This is identical to a map followed by flat with depth 1.
	**/
	function flatMap<U, This>(callback:(value:T, index:Float, array:Array<T>) -> ts.AnyOf2<haxe.ds.ReadOnlyArray<U>, U>, ?thisArg:This):Array<U>;
	/**
		Returns a new array with all sub-array elements concatenated into it recursively up to the
		specified depth.
		
		Returns a new array with all sub-array elements concatenated into it recursively up to the
		specified depth.
		
		Returns a new array with all sub-array elements concatenated into it recursively up to the
		specified depth.
		
		Returns a new array with all sub-array elements concatenated into it recursively up to the
		specified depth.
		
		Returns a new array with all sub-array elements concatenated into it recursively up to the
		specified depth.
		
		Returns a new array with all sub-array elements concatenated into it recursively up to the
		specified depth.
		
		Returns a new array with all sub-array elements concatenated into it recursively up to the
		specified depth.
		
		Returns a new array with all sub-array elements concatenated into it recursively up to the
		specified depth.
		
		Returns a new array with all sub-array elements concatenated into it recursively up to the
		specified depth. If no depth is provided, flat method defaults to the depth of 1.
	**/
	@:overload(function<U>(depth:Int):Array<U> { })
	@:overload(function<U>(depth:Int):Array<U> { })
	@:overload(function<U>(depth:Int):Array<U> { })
	@:overload(function<U>(depth:Int):Array<U> { })
	@:overload(function<U>(depth:Int):Array<U> { })
	@:overload(function<U>(?depth:Int):Array<U> { })
	@:overload(function<U>(depth:Int):Array<U> { })
	@:overload(function<U>(?depth:Float):Array<Dynamic> { })
	function flat<U>(depth:Int):Array<U>;
	/**
		Takes an integer value and returns the item at that index,
		allowing for positive and negative integers.
		Negative integers count back from the last item in the array.
	**/
	function at(index:Float):Null<T>;
};