package node.child_process;

typedef SpawnSyncOptions = {
	@:optional
	var input : node.crypto.BinaryLike;
	@:optional
	var maxBuffer : Float;
	@:optional
	var encoding : String;
	@:optional
	var argv0 : String;
	@:optional
	var stdio : StdioOptions;
	@:optional
	var shell : ts.AnyOf2<String, Bool>;
	@:optional
	var windowsVerbatimArguments : Bool;
	@:optional
	var windowsHide : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var uid : Float;
	@:optional
	var gid : Float;
	@:optional
	var cwd : ts.AnyOf2<String, node.url.URL>;
	@:optional
	var env : global.nodejs.ProcessEnv;
	/**
		Specify the kind of serialization used for sending messages between processes.
	**/
	@:optional
	var serialization : SerializationType;
	/**
		The signal value to be used when the spawned process will be killed by the abort signal.
	**/
	@:optional
	var killSignal : ts.AnyOf2<Float, String>;
	/**
		When provided the corresponding `AbortController` can be used to cancel an asynchronous action.
	**/
	@:optional
	var signal : js.html.AbortSignal;
};