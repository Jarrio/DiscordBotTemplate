package js.lib;

typedef IAtomics = {
	/**
		Adds a value to the value at the given position in the array, returning the original value.
		Until this atomic operation completes, any other read or write operation against the array
		will block.
	**/
	function add(typedArray:ts.AnyOf6<js.lib.Int8Array, js.lib.Uint8Array, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array>, index:Float, value:Float):Float;
	/**
		Stores the bitwise AND of a value with the value at the given position in the array,
		returning the original value. Until this atomic operation completes, any other read or
		write operation against the array will block.
	**/
	function and(typedArray:ts.AnyOf6<js.lib.Int8Array, js.lib.Uint8Array, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array>, index:Float, value:Float):Float;
	/**
		Replaces the value at the given position in the array if the original value equals the given
		expected value, returning the original value. Until this atomic operation completes, any
		other read or write operation against the array will block.
	**/
	function compareExchange(typedArray:ts.AnyOf6<js.lib.Int8Array, js.lib.Uint8Array, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array>, index:Float, expectedValue:Float, replacementValue:Float):Float;
	/**
		Replaces the value at the given position in the array, returning the original value. Until
		this atomic operation completes, any other read or write operation against the array will
		block.
	**/
	function exchange(typedArray:ts.AnyOf6<js.lib.Int8Array, js.lib.Uint8Array, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array>, index:Float, value:Float):Float;
	/**
		Returns a value indicating whether high-performance algorithms can use atomic operations
		(`true`) or must use locks (`false`) for the given number of bytes-per-element of a typed
		array.
	**/
	function isLockFree(size:Float):Bool;
	/**
		Returns the value at the given position in the array. Until this atomic operation completes,
		any other read or write operation against the array will block.
	**/
	function load(typedArray:ts.AnyOf6<js.lib.Int8Array, js.lib.Uint8Array, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array>, index:Float):Float;
	/**
		Stores the bitwise OR of a value with the value at the given position in the array,
		returning the original value. Until this atomic operation completes, any other read or write
		operation against the array will block.
	**/
	function or(typedArray:ts.AnyOf6<js.lib.Int8Array, js.lib.Uint8Array, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array>, index:Float, value:Float):Float;
	/**
		Stores a value at the given position in the array, returning the new value. Until this
		atomic operation completes, any other read or write operation against the array will block.
	**/
	function store(typedArray:ts.AnyOf6<js.lib.Int8Array, js.lib.Uint8Array, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array>, index:Float, value:Float):Float;
	/**
		Subtracts a value from the value at the given position in the array, returning the original
		value. Until this atomic operation completes, any other read or write operation against the
		array will block.
	**/
	function sub(typedArray:ts.AnyOf6<js.lib.Int8Array, js.lib.Uint8Array, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array>, index:Float, value:Float):Float;
	/**
		If the value at the given position in the array is equal to the provided value, the current
		agent is put to sleep causing execution to suspend until the timeout expires (returning
		`"timed-out"`) or until the agent is awoken (returning `"ok"`); otherwise, returns
		`"not-equal"`.
	**/
	function wait(typedArray:js.lib.Int32Array, index:Float, value:Float, ?timeout:Float):String;
	/**
		Wakes up sleeping agents that are waiting on the given index of the array, returning the
		number of agents that were awoken.
	**/
	function notify(typedArray:js.lib.Int32Array, index:Float, count:Float):Float;
	/**
		Stores the bitwise XOR of a value with the value at the given position in the array,
		returning the original value. Until this atomic operation completes, any other read or write
		operation against the array will block.
	**/
	function xor(typedArray:ts.AnyOf6<js.lib.Int8Array, js.lib.Uint8Array, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array>, index:Float, value:Float):Float;
};