package global;

typedef RelativeIndexable<T> = {
	/**
		Takes an integer value and returns the item at that index,
		allowing for positive and negative integers.
		Negative integers count back from the last item in the array.
	**/
	function at(index:Float):Null<T>;
};