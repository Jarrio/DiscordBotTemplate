package node.child_process;

typedef ExecFileSyncOptionsWithStringEncoding = {
	var encoding : global.BufferEncoding;
	@:optional
	var shell : ts.AnyOf2<String, Bool>;
	@:optional
	var input : node.crypto.BinaryLike;
	@:optional
	var stdio : StdioOptions;
	@:optional
	var killSignal : ts.AnyOf2<Float, String>;
	@:optional
	var maxBuffer : Float;
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