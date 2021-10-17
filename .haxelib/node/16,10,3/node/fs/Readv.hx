package node.fs;

/**
	Read from a file specified by `fd` and write to an array of `ArrayBufferView`s
	using `readv()`.
	
	`position` is the offset from the beginning of the file from where data
	should be read. If `typeof position !== 'number'`, the data will be read
	from the current position.
	
	The callback will be given three arguments: `err`, `bytesRead`, and`buffers`. `bytesRead` is how many bytes were read from the file.
	
	If this method is invoked as its `util.promisify()` ed version, it returns
	a promise for an `Object` with `bytesRead` and `buffers` properties.
**/
@:jsRequire("fs", "readv") @valueModuleOnly extern class Readv {
	/**
		Read from a file specified by `fd` and write to an array of `ArrayBufferView`s
		using `readv()`.
		
		`position` is the offset from the beginning of the file from where data
		should be read. If `typeof position !== 'number'`, the data will be read
		from the current position.
		
		The callback will be given three arguments: `err`, `bytesRead`, and`buffers`. `bytesRead` is how many bytes were read from the file.
		
		If this method is invoked as its `util.promisify()` ed version, it returns
		a promise for an `Object` with `bytesRead` and `buffers` properties.
	**/
	@:overload(function(fd:Float, buffers:haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView>, position:Float, cb:(err:Null<global.nodejs.ErrnoException>, bytesRead:Float, buffers:Array<global.nodejs.ArrayBufferView>) -> Void):Void { })
	@:selfCall
	static function call(fd:Float, buffers:haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView>, cb:(err:Null<global.nodejs.ErrnoException>, bytesRead:Float, buffers:Array<global.nodejs.ArrayBufferView>) -> Void):Void;
}