package node.perf_hooks;

typedef CreateHistogramOptions = {
	/**
		The minimum recordable value. Must be an integer value greater than 0.
	**/
	@:optional
	var min : ts.AnyOf2<Float, js.lib.BigInt>;
	/**
		The maximum recordable value. Must be an integer value greater than min.
	**/
	@:optional
	var max : ts.AnyOf2<Float, js.lib.BigInt>;
	/**
		The number of accuracy digits. Must be a number between 1 and 5.
	**/
	@:optional
	var figures : Float;
};