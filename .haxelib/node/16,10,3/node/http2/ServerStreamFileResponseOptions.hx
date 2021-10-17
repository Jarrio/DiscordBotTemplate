package node.http2;

typedef ServerStreamFileResponseOptions = {
	@:optional
	function statCheck(stats:node.fs.Stats, headers:node.http.OutgoingHttpHeaders, statOptions:StatOptions):ts.AnyOf2<Bool, ts.Undefined>;
	@:optional
	var waitForTrailers : Bool;
	@:optional
	var offset : Float;
	@:optional
	var length : Float;
};