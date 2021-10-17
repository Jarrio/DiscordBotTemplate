package node.zlib;

@:jsRequire("zlib", "brotliDecompress") @valueModuleOnly extern class BrotliDecompress_ {
	@:overload(function(buf:InputType, callback:CompressCallback):Void { })
	@:selfCall
	static function call(buf:InputType, options:BrotliOptions, callback:CompressCallback):Void;
}