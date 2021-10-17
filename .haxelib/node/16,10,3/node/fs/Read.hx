package node.fs;

/**
	Read data from the file specified by `fd`.
	
	The callback is given the three arguments, `(err, bytesRead, buffer)`.
	
	If the file is not modified concurrently, the end-of-file is reached when the
	number of bytes read is zero.
	
	If this method is invoked as its `util.promisify()` ed version, it returns
	a promise for an `Object` with `bytesRead` and `buffer` properties.
**/
@:jsRequire("fs", "read") @valueModuleOnly extern class Read {
	/**
		Read data from the file specified by `fd`.
		
		The callback is given the three arguments, `(err, bytesRead, buffer)`.
		
		If the file is not modified concurrently, the end-of-file is reached when the
		number of bytes read is zero.
		
		If this method is invoked as its `util.promisify()` ed version, it returns
		a promise for an `Object` with `bytesRead` and `buffer` properties.
	**/
	@:selfCall
	static function call<TBuffer>(fd:Float, buffer:TBuffer, offset:Float, length:Float, position:Null<ts.AnyOf2<Float, js.lib.BigInt>>, callback:(err:Null<global.nodejs.ErrnoException>, bytesRead:Float, buffer:TBuffer) -> Void):Void;
}