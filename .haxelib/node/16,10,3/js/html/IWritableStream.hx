package js.html;

/**
	This Streams API interface provides a standard abstraction for writing streaming data to a destination, known as a sink. This object comes with built-in backpressure and queuing.
**/
typedef IWritableStream<W> = {
	final locked : Bool;
	function abort(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
	function getWriter():WritableStreamDefaultWriter<W>;
};