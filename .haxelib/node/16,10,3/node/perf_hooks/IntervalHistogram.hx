package node.perf_hooks;

typedef IntervalHistogram = {
	/**
		Enables the update interval timer. Returns `true` if the timer was
		started, `false` if it was already started.
	**/
	function enable():Bool;
	/**
		Disables the update interval timer. Returns `true` if the timer was
		stopped, `false` if it was already stopped.
	**/
	function disable():Bool;
	/**
		Returns a `Map` object detailing the accumulated percentile distribution.
	**/
	final percentiles : js.lib.Map<Float, Float>;
	/**
		The number of times the event loop delay exceeded the maximum 1 hour event
		loop delay threshold.
	**/
	final exceeds : Float;
	/**
		The minimum recorded event loop delay.
	**/
	final min : Float;
	/**
		The maximum recorded event loop delay.
	**/
	final max : Float;
	/**
		The mean of the recorded event loop delays.
	**/
	final mean : Float;
	/**
		The standard deviation of the recorded event loop delays.
	**/
	final stddev : Float;
	/**
		Resets the collected histogram data.
	**/
	function reset():Void;
	/**
		Returns the value at the given percentile.
	**/
	function percentile(percentile:Float):Float;
};