package node.zlib;

@:jsRequire("zlib", "deflateRaw") @valueModuleOnly extern class DeflateRaw_ {
	@:overload(function(buf:InputType, options:ZlibOptions, callback:CompressCallback):Void { })
	@:selfCall
	static function call(buf:InputType, callback:CompressCallback):Void;
}