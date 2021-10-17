package js.html;

@:native("ReadableStreamReader") extern class ReadableStreamReader<R> {
	function new();
	function cancel():js.lib.Promise<ts.Undefined>;
	function read():js.lib.Promise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
	static var prototype : ReadableStreamReader<Dynamic>;
}