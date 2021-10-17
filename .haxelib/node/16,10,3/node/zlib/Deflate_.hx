package node.zlib;

@:jsRequire("zlib", "deflate") @valueModuleOnly extern class Deflate_ {
	@:overload(function(buf:InputType, options:ZlibOptions, callback:CompressCallback):Void { })
	@:selfCall
	static function call(buf:InputType, callback:CompressCallback):Void;
}