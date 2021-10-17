package node.perf_hooks;

typedef RecordableHistogram = {
	function record(val:ts.AnyOf2<Float, js.lib.BigInt>):Void;
	/**
		Calculates the amount of time (in nanoseconds) that has passed since the
		previous call to `recordDelta()` and records that amount in the histogram.
		
		## Examples
	**/
	function recordDelta():Void;
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