package node.fs.promises;

typedef FileHandle = {
	/**
		The numeric file descriptor managed by the {FileHandle} object.
	**/
	final fd : Float;
	/**
		Alias of `filehandle.writeFile()`.
		
		When operating on file handles, the mode cannot be changed from what it was set
		to with `fsPromises.open()`. Therefore, this is equivalent to `filehandle.writeFile()`.
	**/
	function appendFile(data:ts.AnyOf2<String, js.lib.Uint8Array>, ?options:ts.AnyOf2<String, node.fs.ObjectEncodingOptions & FlagAndOpenMode>):js.lib.Promise<ts.Undefined>;
	/**
		Changes the ownership of the file. A wrapper for [`chown(2)`](http://man7.org/linux/man-pages/man2/chown.2.html).
	**/
	function chown(uid:Float, gid:Float):js.lib.Promise<ts.Undefined>;
	/**
		Modifies the permissions on the file. See [`chmod(2)`](http://man7.org/linux/man-pages/man2/chmod.2.html).
	**/
	function chmod(mode:ts.AnyOf2<String, Float>):js.lib.Promise<ts.Undefined>;
	/**
		Forces all currently queued I/O operations associated with the file to the
		operating system's synchronized I/O completion state. Refer to the POSIX [`fdatasync(2)`](http://man7.org/linux/man-pages/man2/fdatasync.2.html) documentation for details.
		
		Unlike `filehandle.sync` this method does not flush modified metadata.
	**/
	function datasync():js.lib.Promise<ts.Undefined>;
	/**
		Request that all data for the open file descriptor is flushed to the storage
		device. The specific implementation is operating system and device specific.
		Refer to the POSIX [`fsync(2)`](http://man7.org/linux/man-pages/man2/fsync.2.html) documentation for more detail.
	**/
	function sync():js.lib.Promise<ts.Undefined>;
	/**
		Reads data from the file and stores that in the given buffer.
		
		If the file is not modified concurrently, the end-of-file is reached when the
		number of bytes read is zero.
	**/
	@:overload(function<T>(?options:FileReadOptions<T>):js.lib.Promise<FileReadResult<T>> { })
	function read<T>(buffer:T, ?offset:Float, ?length:Float, ?position:Float):js.lib.Promise<FileReadResult<T>>;
	/**
		Asynchronously reads the entire contents of a file.
		
		If `options` is a string, then it specifies the `encoding`.
		
		The `FileHandle` has to support reading.
		
		If one or more `filehandle.read()` calls are made on a file handle and then a`filehandle.readFile()` call is made, the data will be read from the current
		position till the end of the file. It doesn't always read from the beginning
		of the file.
		
		Asynchronously reads the entire contents of a file. The underlying file will _not_ be closed automatically.
		The `FileHandle` must have been opened for reading.
		
		Asynchronously reads the entire contents of a file. The underlying file will _not_ be closed automatically.
		The `FileHandle` must have been opened for reading.
	**/
	@:overload(function(options:ts.AnyOf2<String, { var encoding : global.BufferEncoding; @:optional var flag : ts.AnyOf2<String, Float>; }>):js.lib.Promise<String> { })
	@:overload(function(?options:ts.AnyOf2<String, node.fs.ObjectEncodingOptions & { @:optional var flag : ts.AnyOf2<String, Float>; }>):js.lib.Promise<ts.AnyOf2<String, node.buffer.Buffer>> { })
	function readFile(?options:{ @:optional var encoding : Any; @:optional var flag : ts.AnyOf2<String, Float>; }):js.lib.Promise<node.buffer.Buffer>;
	@:overload(function(opts:Dynamic):js.lib.Promise<node.fs.BigIntStats> { })
	@:overload(function(?opts:node.fs.StatOptions):js.lib.Promise<ts.AnyOf2<node.fs.Stats, node.fs.BigIntStats>> { })
	function stat(?opts:node.fs.StatOptions & { @:optional var bigint : Bool; }):js.lib.Promise<node.fs.Stats>;
	/**
		Truncates the file.
		
		If the file was larger than `len` bytes, only the first `len` bytes will be
		retained in the file.
		
		The following example retains only the first four bytes of the file:
		
		```js
		import { open } from 'fs/promises';
		
		let filehandle = null;
		try {
		   filehandle = await open('temp.txt', 'r+');
		   await filehandle.truncate(4);
		} finally {
		   await filehandle?.close();
		}
		```
		
		If the file previously was shorter than `len` bytes, it is extended, and the
		extended part is filled with null bytes (`'\0'`):
		
		If `len` is negative then `0` will be used.
	**/
	function truncate(?len:Float):js.lib.Promise<ts.Undefined>;
	/**
		Change the file system timestamps of the object referenced by the `FileHandle` then resolves the promise with no arguments upon success.
	**/
	function utimes(atime:node.fs.TimeLike, mtime:node.fs.TimeLike):js.lib.Promise<ts.Undefined>;
	/**
		Asynchronously writes data to a file, replacing the file if it already exists.`data` can be a string, a buffer, an
		[AsyncIterable](https://tc39.github.io/ecma262/#sec-asynciterable-interface) or
		[Iterable](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols#The_iterable_protocol) object, or an
		object with an own `toString` function
		property. The promise is resolved with no arguments upon success.
		
		If `options` is a string, then it specifies the `encoding`.
		
		The `FileHandle` has to support writing.
		
		It is unsafe to use `filehandle.writeFile()` multiple times on the same file
		without waiting for the promise to be resolved (or rejected).
		
		If one or more `filehandle.write()` calls are made on a file handle and then a`filehandle.writeFile()` call is made, the data will be written from the
		current position till the end of the file. It doesn't always write from the
		beginning of the file.
	**/
	function writeFile(data:ts.AnyOf2<String, js.lib.Uint8Array>, ?options:ts.AnyOf2<String, node.fs.ObjectEncodingOptions & FlagAndOpenMode & node.events.eventemitter.Abortable>):js.lib.Promise<ts.Undefined>;
	/**
		Write `buffer` to the file.
		
		If `buffer` is a plain object, it must have an own (not inherited) `toString`function property.
		
		The promise is resolved with an object containing two properties:
		
		It is unsafe to use `filehandle.write()` multiple times on the same file
		without waiting for the promise to be resolved (or rejected). For this
		scenario, use `fs.createWriteStream()`.
		
		On Linux, positional writes do not work when the file is opened in append mode.
		The kernel ignores the position argument and always appends the data to
		the end of the file.
	**/
	@:overload(function(data:String, ?position:Float, ?encoding:global.BufferEncoding):js.lib.Promise<{
		var bytesWritten : Float;
		var buffer : String;
	}> { })
	function write<TBuffer>(buffer:TBuffer, ?offset:Float, ?length:Float, ?position:Float):js.lib.Promise<{
		var bytesWritten : Float;
		var buffer : TBuffer;
	}>;
	/**
		Write an array of [ArrayBufferView](https://developer.mozilla.org/en-US/docs/Web/API/ArrayBufferView) s to the file.
		
		The promise is resolved with an object containing a two properties:
		
		It is unsafe to call `writev()` multiple times on the same file without waiting
		for the promise to be resolved (or rejected).
		
		On Linux, positional writes don't work when the file is opened in append mode.
		The kernel ignores the position argument and always appends the data to
		the end of the file.
	**/
	function writev(buffers:haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView>, ?position:Float):js.lib.Promise<node.fs.WriteVResult>;
	/**
		Read from a file and write to an array of [ArrayBufferView](https://developer.mozilla.org/en-US/docs/Web/API/ArrayBufferView) s
	**/
	function readv(buffers:haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView>, ?position:Float):js.lib.Promise<node.fs.ReadVResult>;
	/**
		Closes the file handle after waiting for any pending operation on the handle to
		complete.
		
		```js
		import { open } from 'fs/promises';
		
		let filehandle;
		try {
		   filehandle = await open('thefile.txt', 'r');
		} finally {
		   await filehandle?.close();
		}
		```
	**/
	function close():js.lib.Promise<ts.Undefined>;
};