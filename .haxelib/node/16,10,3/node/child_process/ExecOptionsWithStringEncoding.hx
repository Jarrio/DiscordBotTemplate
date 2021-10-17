package node.child_process;

typedef ExecOptionsWithStringEncoding = {
	var encoding : global.BufferEncoding;
	@:optional
	var shell : String;
	@:optional
	var maxBuffer : Float;
	@:optional
	var killSignal : ts.AnyOf2<Float, String>;
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
};