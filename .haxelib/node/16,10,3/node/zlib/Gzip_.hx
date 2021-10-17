package node.zlib;

@:jsRequire("zlib", "gzip") @valueModuleOnly extern class Gzip_ {
	@:overload(function(buf:InputType, options:ZlibOptions, callback:CompressCallback):Void { })
	@:selfCall
	static function call(buf:InputType, callback:CompressCallback):Void;
}