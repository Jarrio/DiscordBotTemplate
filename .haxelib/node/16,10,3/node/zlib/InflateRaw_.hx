package node.zlib;

@:jsRequire("zlib", "inflateRaw") @valueModuleOnly extern class InflateRaw_ {
	@:overload(function(buf:InputType, options:ZlibOptions, callback:CompressCallback):Void { })
	@:selfCall
	static function call(buf:InputType, callback:CompressCallback):Void;
}