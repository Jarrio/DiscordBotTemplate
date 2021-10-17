package node.wasi;

typedef WASIOptions = {
	/**
		An array of strings that the WebAssembly application will
		see as command line arguments. The first argument is the virtual path to the
		WASI command itself.
	**/
	@:optional
	var args : Array<String>;
	/**
		An object similar to `process.env` that the WebAssembly
		application will see as its environment.
	**/
	@:optional
	var env : Dynamic;
	/**
		This object represents the WebAssembly application's
		sandbox directory structure. The string keys of `preopens` are treated as
		directories within the sandbox. The corresponding values in `preopens` are
		the real paths to those directories on the host machine.
	**/
	@:optional
	var preopens : global.nodejs.Dict<String>;
	/**
		By default, WASI applications terminate the Node.js
		process via the `__wasi_proc_exit()` function. Setting this option to `true`
		causes `wasi.start()` to return the exit code rather than terminate the
		process.
	**/
	@:optional
	var returnOnExit : Bool;
	/**
		The file descriptor used as standard input in the WebAssembly application.
	**/
	@:optional
	var stdin : Float;
	/**
		The file descriptor used as standard output in the WebAssembly application.
	**/
	@:optional
	var stdout : Float;
	/**
		The file descriptor used as standard error in the WebAssembly application.
	**/
	@:optional
	var stderr : Float;
};