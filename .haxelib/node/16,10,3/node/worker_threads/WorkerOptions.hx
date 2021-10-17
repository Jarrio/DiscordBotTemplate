package node.worker_threads;

typedef WorkerOptions = {
	/**
		List of arguments which would be stringified and appended to
		`process.argv` in the worker. This is mostly similar to the `workerData`
		but the values will be available on the global `process.argv` as if they
		were passed as CLI options to the script.
	**/
	@:optional
	var argv : Array<Dynamic>;
	@:optional
	var env : ts.AnyOf2<js.lib.Symbol, global.nodejs.Dict<String>>;
	@:optional
	var eval : Bool;
	@:optional
	var workerData : Dynamic;
	@:optional
	var stdin : Bool;
	@:optional
	var stdout : Bool;
	@:optional
	var stderr : Bool;
	@:optional
	var execArgv : Array<String>;
	@:optional
	var resourceLimits : ResourceLimits;
	/**
		Additional data to send in the first worker message.
	**/
	@:optional
	var transferList : Array<TransferListItem>;
	@:optional
	var trackUnmanagedFds : Bool;
};