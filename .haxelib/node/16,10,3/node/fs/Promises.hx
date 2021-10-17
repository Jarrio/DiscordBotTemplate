package node.fs;

/**
	The `fs/promises` API provides asynchronous file system methods that return
	promises.
	
	The promise APIs use the underlying Node.js threadpool to perform file
	system operations off the event loop thread. These operations are not
	synchronized or threadsafe. Care must be taken when performing multiple
	concurrent modifications on the same file or data corruption may occur.
**/
@:jsRequire("fs/promises") @valueModuleOnly extern class Promises {
	/**
		Tests a user's permissions for the file or directory specified by `path`.
		The `mode` argument is an optional integer that specifies the accessibility
		checks to be performed. Check `File access constants` for possible values
		of `mode`. It is possible to create a mask consisting of the bitwise OR of
		two or more values (e.g. `fs.constants.W_OK | fs.constants.R_OK`).
		
		If the accessibility check is successful, the promise is resolved with no
		value. If any of the accessibility checks fail, the promise is rejected
		with an [Error](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error) object. The following example checks if the file`/etc/passwd` can be read and
		written by the current process.
		
		```js
		import { access } from 'fs/promises';
		import { constants } from 'fs';
		
		try {
		   await access('/etc/passwd', constants.R_OK | constants.W_OK);
		   console.log('can access');
		} catch {
		   console.error('cannot access');
		}
		```
		
		Using `fsPromises.access()` to check for the accessibility of a file before
		calling `fsPromises.open()` is not recommended. Doing so introduces a race
		condition, since other processes may change the file's state between the two
		calls. Instead, user code should open/read/write the file directly and handle
		the error raised if the file is not accessible.
	**/
	static function access(path:PathLike, ?mode:Float):js.lib.Promise<ts.Undefined>;
	/**
		Asynchronously copies `src` to `dest`. By default, `dest` is overwritten if it
		already exists.
		
		No guarantees are made about the atomicity of the copy operation. If an
		error occurs after the destination file has been opened for writing, an attempt
		will be made to remove the destination.
		
		```js
		import { constants } from 'fs';
		import { copyFile } from 'fs/promises';
		
		try {
		   await copyFile('source.txt', 'destination.txt');
		   console.log('source.txt was copied to destination.txt');
		} catch {
		   console.log('The file could not be copied');
		}
		
		// By using COPYFILE_EXCL, the operation will fail if destination.txt exists.
		try {
		   await copyFile('source.txt', 'destination.txt', constants.COPYFILE_EXCL);
		   console.log('source.txt was copied to destination.txt');
		} catch {
		   console.log('The file could not be copied');
		}
		```
	**/
	static function copyFile(src:PathLike, dest:PathLike, ?mode:Float):js.lib.Promise<ts.Undefined>;
	/**
		Opens a `FileHandle`.
		
		Refer to the POSIX [`open(2)`](http://man7.org/linux/man-pages/man2/open.2.html) documentation for more detail.
		
		Some characters (`< > : " / \ | ? *`) are reserved under Windows as documented
		by [Naming Files, Paths, and Namespaces](https://docs.microsoft.com/en-us/windows/desktop/FileIO/naming-a-file). Under NTFS, if the filename contains
		a colon, Node.js will open a file system stream, as described by [this MSDN page](https://docs.microsoft.com/en-us/windows/desktop/FileIO/using-streams).
	**/
	static function open(path:PathLike, flags:ts.AnyOf2<String, Float>, ?mode:ts.AnyOf2<String, Float>):js.lib.Promise<node.fs.promises.FileHandle>;
	/**
		Renames `oldPath` to `newPath`.
	**/
	static function rename(oldPath:PathLike, newPath:PathLike):js.lib.Promise<ts.Undefined>;
	/**
		Truncates (shortens or extends the length) of the content at `path` to `len`bytes.
	**/
	static function truncate(path:PathLike, ?len:Float):js.lib.Promise<ts.Undefined>;
	/**
		Removes the directory identified by `path`.
		
		Using `fsPromises.rmdir()` on a file (not a directory) results in the
		promise being rejected with an `ENOENT` error on Windows and an `ENOTDIR`error on POSIX.
		
		To get a behavior similar to the `rm -rf` Unix command, use `fsPromises.rm()` with options `{ recursive: true, force: true }`.
	**/
	static function rmdir(path:PathLike, ?options:RmDirOptions):js.lib.Promise<ts.Undefined>;
	/**
		Removes files and directories (modeled on the standard POSIX `rm` utility).
	**/
	static function rm(path:PathLike, ?options:RmOptions):js.lib.Promise<ts.Undefined>;
	/**
		Asynchronously creates a directory.
		
		The optional `options` argument can be an integer specifying `mode` (permission
		and sticky bits), or an object with a `mode` property and a `recursive`property indicating whether parent directories should be created. Calling`fsPromises.mkdir()` when `path` is a directory
		that exists results in a
		rejection only when `recursive` is false.
		
		Asynchronous mkdir(2) - create a directory.
		
		Asynchronous mkdir(2) - create a directory.
	**/
	@:overload(function(path:PathLike, ?options:ts.AnyOf3<String, Float, Dynamic>):js.lib.Promise<ts.Undefined> { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf3<String, Float, MakeDirectoryOptions>):js.lib.Promise<Null<String>> { })
	static function mkdir(path:PathLike, options:Dynamic):js.lib.Promise<Null<String>>;
	/**
		Reads the contents of a directory.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use for
		the filenames. If the `encoding` is set to `'buffer'`, the filenames returned
		will be passed as `Buffer` objects.
		
		If `options.withFileTypes` is set to `true`, the resolved array will contain `fs.Dirent` objects.
		
		```js
		import { readdir } from 'fs/promises';
		
		try {
		   const files = await readdir(path);
		   for (const file of files)
		     console.log(file);
		} catch (err) {
		   console.error(err);
		}
		```
		
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
	**/
	@:overload(function(path:PathLike, options:ts.AnyOf2<String, { var encoding : String; @:optional var withFileTypes : Bool; }>):js.lib.Promise<Array<node.buffer.Buffer>> { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf2<String, ObjectEncodingOptions & { @:optional var withFileTypes : Bool; }>):js.lib.Promise<ts.AnyOf2<Array<String>, Array<node.buffer.Buffer>>> { })
	@:overload(function(path:PathLike, options:ObjectEncodingOptions & { var withFileTypes : Bool; }):js.lib.Promise<Array<Dirent>> { })
	static function readdir(path:PathLike, ?options:ts.AnyOf2<String, ObjectEncodingOptions & { @:optional var withFileTypes : Bool; }>):js.lib.Promise<Array<String>>;
	/**
		Reads the contents of the symbolic link referred to by `path`. See the POSIX [`readlink(2)`](http://man7.org/linux/man-pages/man2/readlink.2.html) documentation for more detail. The promise is
		resolved with the`linkString` upon success.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use for
		the link path returned. If the `encoding` is set to `'buffer'`, the link path
		returned will be passed as a `Buffer` object.
		
		Asynchronous readlink(2) - read value of a symbolic link.
		
		Asynchronous readlink(2) - read value of a symbolic link.
	**/
	@:overload(function(path:PathLike, options:BufferEncodingOption):js.lib.Promise<node.buffer.Buffer> { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf2<String, ObjectEncodingOptions>):js.lib.Promise<ts.AnyOf2<String, node.buffer.Buffer>> { })
	static function readlink(path:PathLike, ?options:EncodingOption):js.lib.Promise<String>;
	/**
		Creates a symbolic link.
		
		The `type` argument is only used on Windows platforms and can be one of `'dir'`,`'file'`, or `'junction'`. Windows junction points require the destination path
		to be absolute. When using `'junction'`, the `target` argument will
		automatically be normalized to absolute path.
	**/
	static function symlink(target:PathLike, path:PathLike, ?type:String):js.lib.Promise<ts.Undefined>;
	/**
		Equivalent to `fsPromises.stat()` unless `path` refers to a symbolic link,
		in which case the link itself is stat-ed, not the file that it refers to.
		Refer to the POSIX [`lstat(2)`](http://man7.org/linux/man-pages/man2/lstat.2.html) document for more detail.
	**/
	@:overload(function(path:PathLike, opts:Dynamic):js.lib.Promise<BigIntStats> { })
	@:overload(function(path:PathLike, ?opts:StatOptions):js.lib.Promise<ts.AnyOf2<Stats, BigIntStats>> { })
	static function lstat(path:PathLike, ?opts:StatOptions & { @:optional var bigint : Bool; }):js.lib.Promise<Stats>;
	@:overload(function(path:PathLike, opts:Dynamic):js.lib.Promise<BigIntStats> { })
	@:overload(function(path:PathLike, ?opts:StatOptions):js.lib.Promise<ts.AnyOf2<Stats, BigIntStats>> { })
	static function stat(path:PathLike, ?opts:StatOptions & { @:optional var bigint : Bool; }):js.lib.Promise<Stats>;
	/**
		Creates a new link from the `existingPath` to the `newPath`. See the POSIX [`link(2)`](http://man7.org/linux/man-pages/man2/link.2.html) documentation for more detail.
	**/
	static function link(existingPath:PathLike, newPath:PathLike):js.lib.Promise<ts.Undefined>;
	/**
		If `path` refers to a symbolic link, then the link is removed without affecting
		the file or directory to which that link refers. If the `path` refers to a file
		path that is not a symbolic link, the file is deleted. See the POSIX [`unlink(2)`](http://man7.org/linux/man-pages/man2/unlink.2.html) documentation for more detail.
	**/
	static function unlink(path:PathLike):js.lib.Promise<ts.Undefined>;
	/**
		Changes the permissions of a file.
	**/
	static function chmod(path:PathLike, mode:ts.AnyOf2<String, Float>):js.lib.Promise<ts.Undefined>;
	/**
		Changes the permissions on a symbolic link.
		
		This method is only implemented on macOS.
	**/
	static function lchmod(path:PathLike, mode:ts.AnyOf2<String, Float>):js.lib.Promise<ts.Undefined>;
	/**
		Changes the ownership on a symbolic link.
	**/
	static function lchown(path:PathLike, uid:Float, gid:Float):js.lib.Promise<ts.Undefined>;
	/**
		Changes the access and modification times of a file in the same way as `fsPromises.utimes()`, with the difference that if the path refers to a
		symbolic link, then the link is not dereferenced: instead, the timestamps of
		the symbolic link itself are changed.
	**/
	static function lutimes(path:PathLike, atime:TimeLike, mtime:TimeLike):js.lib.Promise<ts.Undefined>;
	/**
		Changes the ownership of a file.
	**/
	static function chown(path:PathLike, uid:Float, gid:Float):js.lib.Promise<ts.Undefined>;
	/**
		Change the file system timestamps of the object referenced by `path`.
		
		The `atime` and `mtime` arguments follow these rules:
		
		* Values can be either numbers representing Unix epoch time, `Date`s, or a
		numeric string like `'123456789.0'`.
		* If the value can not be converted to a number, or is `NaN`, `Infinity` or`-Infinity`, an `Error` will be thrown.
	**/
	static function utimes(path:PathLike, atime:TimeLike, mtime:TimeLike):js.lib.Promise<ts.Undefined>;
	/**
		Determines the actual location of `path` using the same semantics as the`fs.realpath.native()` function.
		
		Only paths that can be converted to UTF8 strings are supported.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use for
		the path. If the `encoding` is set to `'buffer'`, the path returned will be
		passed as a `Buffer` object.
		
		On Linux, when Node.js is linked against musl libc, the procfs file system must
		be mounted on `/proc` in order for this function to work. Glibc does not have
		this restriction.
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
	**/
	@:overload(function(path:PathLike, options:BufferEncodingOption):js.lib.Promise<node.buffer.Buffer> { })
	@:overload(function(path:PathLike, ?options:EncodingOption):js.lib.Promise<ts.AnyOf2<String, node.buffer.Buffer>> { })
	static function realpath(path:PathLike, ?options:EncodingOption):js.lib.Promise<String>;
	/**
		Creates a unique temporary directory. A unique directory name is generated by
		appending six random characters to the end of the provided `prefix`. Due to
		platform inconsistencies, avoid trailing `X` characters in `prefix`. Some
		platforms, notably the BSDs, can return more than six random characters, and
		replace trailing `X` characters in `prefix` with random characters.
		
		The optional `options` argument can be a string specifying an encoding, or an
		object with an `encoding` property specifying the character encoding to use.
		
		```js
		import { mkdtemp } from 'fs/promises';
		
		try {
		   await mkdtemp(path.join(os.tmpdir(), 'foo-'));
		} catch (err) {
		   console.error(err);
		}
		```
		
		The `fsPromises.mkdtemp()` method will append the six randomly selected
		characters directly to the `prefix` string. For instance, given a directory`/tmp`, if the intention is to create a temporary directory _within_`/tmp`, the`prefix` must end with a trailing
		platform-specific path separator
		(`require('path').sep`).
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required `prefix` to create a unique temporary directory.
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required `prefix` to create a unique temporary directory.
	**/
	@:overload(function(prefix:String, options:BufferEncodingOption):js.lib.Promise<node.buffer.Buffer> { })
	@:overload(function(prefix:String, ?options:EncodingOption):js.lib.Promise<ts.AnyOf2<String, node.buffer.Buffer>> { })
	static function mkdtemp(prefix:String, ?options:EncodingOption):js.lib.Promise<String>;
	/**
		Asynchronously writes data to a file, replacing the file if it already exists.`data` can be a string, a `Buffer`, or, an object with an own (not inherited)`toString` function property.
		
		The `encoding` option is ignored if `data` is a buffer.
		
		If `options` is a string, then it specifies the encoding.
		
		The `mode` option only affects the newly created file. See `fs.open()` for more details.
		
		Any specified `FileHandle` has to support writing.
		
		It is unsafe to use `fsPromises.writeFile()` multiple times on the same file
		without waiting for the promise to be settled.
		
		Similarly to `fsPromises.readFile` \- `fsPromises.writeFile` is a convenience
		method that performs multiple `write` calls internally to write the buffer
		passed to it. For performance sensitive code consider using `fs.createWriteStream()`.
		
		It is possible to use an `AbortSignal` to cancel an `fsPromises.writeFile()`.
		Cancelation is "best effort", and some amount of data is likely still
		to be written.
		
		```js
		import { writeFile } from 'fs/promises';
		import { Buffer } from 'buffer';
		
		try {
		   const controller = new AbortController();
		   const { signal } = controller;
		   const data = new Uint8Array(Buffer.from('Hello Node.js'));
		   const promise = writeFile('message.txt', data, { signal });
		
		   // Abort the request before the promise settles.
		   controller.abort();
		
		   await promise;
		} catch (err) {
		   // When a request is aborted - err is an AbortError
		   console.error(err);
		}
		```
		
		Aborting an ongoing request does not abort individual operating
		system requests but rather the internal buffering `fs.writeFile` performs.
	**/
	static function writeFile(file:ts.AnyOf4<String, node.buffer.Buffer, node.url.URL, node.fs.promises.FileHandle>, data:ts.AnyOf16<String, js.lib.Int8Array, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.BigInt64Array, js.lib.BigUint64Array, js.lib.DataView, node.stream.Stream, Iterable<node.crypto.BinaryLike>, js.lib.AsyncIterable<node.crypto.BinaryLike>>, ?options:ts.AnyOf2<String, ObjectEncodingOptions & { @:optional var mode : ts.AnyOf2<String, Float>; @:optional var flag : ts.AnyOf2<String, Float>; } & node.events.eventemitter.Abortable>):js.lib.Promise<ts.Undefined>;
	/**
		Asynchronously append data to a file, creating the file if it does not yet
		exist. `data` can be a string or a `Buffer`.
		
		If `options` is a string, then it specifies the `encoding`.
		
		The `mode` option only affects the newly created file. See `fs.open()` for more details.
		
		The `path` may be specified as a `FileHandle` that has been opened
		for appending (using `fsPromises.open()`).
	**/
	static function appendFile(path:ts.AnyOf4<String, node.buffer.Buffer, node.url.URL, node.fs.promises.FileHandle>, data:ts.AnyOf2<String, js.lib.Uint8Array>, ?options:ts.AnyOf2<String, ObjectEncodingOptions & node.fs.promises.FlagAndOpenMode>):js.lib.Promise<ts.Undefined>;
	/**
		Asynchronously reads the entire contents of a file.
		
		If no encoding is specified (using `options.encoding`), the data is returned
		as a `Buffer` object. Otherwise, the data will be a string.
		
		If `options` is a string, then it specifies the encoding.
		
		When the `path` is a directory, the behavior of `fsPromises.readFile()` is
		platform-specific. On macOS, Linux, and Windows, the promise will be rejected
		with an error. On FreeBSD, a representation of the directory's contents will be
		returned.
		
		It is possible to abort an ongoing `readFile` using an `AbortSignal`. If a
		request is aborted the promise returned is rejected with an `AbortError`:
		
		```js
		import { readFile } from 'fs/promises';
		
		try {
		   const controller = new AbortController();
		   const { signal } = controller;
		   const promise = readFile(fileName, { signal });
		
		   // Abort the request before the promise settles.
		   controller.abort();
		
		   await promise;
		} catch (err) {
		   // When a request is aborted - err is an AbortError
		   console.error(err);
		}
		```
		
		Aborting an ongoing request does not abort individual operating
		system requests but rather the internal buffering `fs.readFile` performs.
		
		Any specified `FileHandle` has to support reading.
		
		Asynchronously reads the entire contents of a file.
		
		Asynchronously reads the entire contents of a file.
	**/
	@:overload(function(path:ts.AnyOf4<String, node.buffer.Buffer, node.url.URL, node.fs.promises.FileHandle>, options:ts.AnyOf2<String, { var encoding : global.BufferEncoding; @:optional var flag : ts.AnyOf2<String, Float>; } & node.events.eventemitter.Abortable>):js.lib.Promise<String> { })
	@:overload(function(path:ts.AnyOf4<String, node.buffer.Buffer, node.url.URL, node.fs.promises.FileHandle>, ?options:ts.AnyOf2<String, ObjectEncodingOptions & node.events.eventemitter.Abortable & { @:optional var flag : ts.AnyOf2<String, Float>; }>):js.lib.Promise<ts.AnyOf2<String, node.buffer.Buffer>> { })
	static function readFile(path:ts.AnyOf4<String, node.buffer.Buffer, node.url.URL, node.fs.promises.FileHandle>, ?options:{ @:optional var encoding : Any; @:optional var flag : ts.AnyOf2<String, Float>; } & node.events.eventemitter.Abortable):js.lib.Promise<node.buffer.Buffer>;
	/**
		Asynchronously open a directory for iterative scanning. See the POSIX [`opendir(3)`](http://man7.org/linux/man-pages/man3/opendir.3.html) documentation for more detail.
		
		Creates an `fs.Dir`, which contains all further functions for reading from
		and cleaning up the directory.
		
		The `encoding` option sets the encoding for the `path` while opening the
		directory and subsequent read operations.
		
		Example using async iteration:
		
		```js
		import { opendir } from 'fs/promises';
		
		try {
		   const dir = await opendir('./');
		   for await (const dirent of dir)
		     console.log(dirent.name);
		} catch (err) {
		   console.error(err);
		}
		```
		
		When using the async iterator, the `fs.Dir` object will be automatically
		closed after the iterator exits.
	**/
	static function opendir(path:String, ?options:OpenDirOptions):js.lib.Promise<Dir>;
	/**
		Returns an async iterator that watches for changes on `filename`, where `filename`is either a file or a directory.
		
		```js
		const { watch } = require('fs/promises');
		
		const ac = new AbortController();
		const { signal } = ac;
		setTimeout(() => ac.abort(), 10000);
		
		(async () => {
		   try {
		     const watcher = watch(__filename, { signal });
		     for await (const event of watcher)
		       console.log(event);
		   } catch (err) {
		     if (err.name === 'AbortError')
		       return;
		     throw err;
		   }
		})();
		```
		
		On most platforms, `'rename'` is emitted whenever a filename appears or
		disappears in the directory.
		
		All the `caveats` for `fs.watch()` also apply to `fsPromises.watch()`.
		
		Watch for changes on `filename`, where `filename` is either a file or a directory, returning an `FSWatcher`.
		
		Watch for changes on `filename`, where `filename` is either a file or a directory, returning an `FSWatcher`.
	**/
	@:overload(function(filename:PathLike, ?options:ts.AnyOf2<String, WatchOptions>):js.lib.AsyncIterable<node.fs.promises.FileChangeInfo<String>> { })
	@:overload(function(filename:PathLike, options:ts.AnyOf2<String, WatchOptions>):ts.AnyOf2<js.lib.AsyncIterable<node.fs.promises.FileChangeInfo<String>>, js.lib.AsyncIterable<node.fs.promises.FileChangeInfo<node.buffer.Buffer>>> { })
	static function watch(filename:PathLike, options:ts.AnyOf2<String, Dynamic>):js.lib.AsyncIterable<node.fs.promises.FileChangeInfo<node.buffer.Buffer>>;
	/**
		Asynchronously copies the entire directory structure from `src` to `dest`,
		including subdirectories and files.
		
		When copying a directory to another directory, globs are not supported and
		behavior is similar to `cp dir1/ dir2/`.
	**/
	static function cp(source:String, destination:String, ?opts:CopyOptions):js.lib.Promise<ts.Undefined>;
}