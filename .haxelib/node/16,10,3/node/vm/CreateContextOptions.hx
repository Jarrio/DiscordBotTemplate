package node.vm;

typedef CreateContextOptions = {
	/**
		Human-readable name of the newly created context.
	**/
	@:optional
	var name : String;
	/**
		Corresponds to the newly created context for display purposes.
		The origin should be formatted like a `URL`, but with only the scheme, host, and port (if necessary),
		like the value of the `url.origin` property of a URL object.
		Most notably, this string should omit the trailing slash, as that denotes a path.
	**/
	@:optional
	var origin : String;
	@:optional
	var codeGeneration : {
		/**
			If set to false any calls to eval or function constructors (Function, GeneratorFunction, etc)
			will throw an EvalError.
		**/
		@:optional
		var strings : Bool;
		/**
			If set to false any attempt to compile a WebAssembly module will throw a WebAssembly.CompileError.
		**/
		@:optional
		var wasm : Bool;
	};
	/**
		If set to `afterEvaluate`, microtasks will be run immediately after the script has run.
	**/
	@:optional
	var microtaskMode : String;
};