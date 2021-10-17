package js.html;

typedef ReadableStreamDefaultReader<R> = {
	final closed : js.lib.Promise<ts.Undefined>;
	function cancel(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
	function read():js.lib.Promise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
};