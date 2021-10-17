package js.html;

/**
	This Streams API interface represents a readable stream of byte data. The Fetch API offers a concrete instance of a ReadableStream through the body property of a Response object.
**/
typedef IReadableStream<R> = {
	final locked : Bool;
	function cancel(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
	@:overload(function():ReadableStreamDefaultReader<R> { })
	function getReader(options:{ var mode : String; }):ReadableStreamBYOBReader;
	function pipeThrough<T>(__0:{ var writable : WritableStream<R>; var readable : ReadableStream<T>; }, ?options:PipeOptions):ReadableStream<T>;
	function pipeTo(dest:WritableStream<R>, ?options:PipeOptions):js.lib.Promise<ts.Undefined>;
	function tee():ts.Tuple2<ReadableStream<R>, ReadableStream<R>>;
};