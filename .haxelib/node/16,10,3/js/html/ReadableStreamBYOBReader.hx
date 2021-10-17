package js.html;

typedef ReadableStreamBYOBReader = {
	final closed : js.lib.Promise<ts.Undefined>;
	function cancel(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
	function read<T>(view:T):js.lib.Promise<ReadableStreamReadResult<T>>;
	function releaseLock():Void;
};