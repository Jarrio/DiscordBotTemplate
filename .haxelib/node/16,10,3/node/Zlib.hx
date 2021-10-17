package node;

/**
	The `zlib` module provides compression functionality implemented using Gzip,
	Deflate/Inflate, and Brotli.
	
	To access it:
	
	```js
	const zlib = require('zlib');
	```
	
	Compression and decompression are built around the Node.js `Streams API`.
	
	Compressing or decompressing a stream (such as a file) can be accomplished by
	piping the source stream through a `zlib` `Transform` stream into a destination
	stream:
	
	```js
	const { createGzip } = require('zlib');
	const { pipeline } = require('stream');
	const {
	   createReadStream,
	   createWriteStream
	} = require('fs');
	
	const gzip = createGzip();
	const source = createReadStream('input.txt');
	const destination = createWriteStream('input.txt.gz');
	
	pipeline(source, gzip, destination, (err) => {
	   if (err) {
	     console.error('An error occurred:', err);
	     process.exitCode = 1;
	   }
	});
	
	// Or, Promisified
	
	const { promisify } = require('util');
	const pipe = promisify(pipeline);
	
	async function do_gzip(input, output) {
	   const gzip = createGzip();
	   const source = createReadStream(input);
	   const destination = createWriteStream(output);
	   await pipe(source, gzip, destination);
	}
	
	do_gzip('input.txt', 'input.txt.gz')
	   .catch((err) => {
	     console.error('An error occurred:', err);
	     process.exitCode = 1;
	   });
	```
	
	It is also possible to compress or decompress data in a single step:
	
	```js
	const { deflate, unzip } = require('zlib');
	
	const input = '.................................';
	deflate(input, (err, buffer) => {
	   if (err) {
	     console.error('An error occurred:', err);
	     process.exitCode = 1;
	   }
	   console.log(buffer.toString('base64'));
	});
	
	const buffer = Buffer.from('eJzT0yMAAGTvBe8=', 'base64');
	unzip(buffer, (err, buffer) => {
	   if (err) {
	     console.error('An error occurred:', err);
	     process.exitCode = 1;
	   }
	   console.log(buffer.toString());
	});
	
	// Or, Promisified
	
	const { promisify } = require('util');
	const do_unzip = promisify(unzip);
	
	do_unzip(buffer)
	   .then((buf) => console.log(buf.toString()))
	   .catch((err) => {
	     console.error('An error occurred:', err);
	     process.exitCode = 1;
	   });
	```
**/
@:jsRequire("zlib") @valueModuleOnly extern class Zlib {
	/**
		Creates and returns a new `BrotliCompress` object.
	**/
	static function createBrotliCompress(?options:node.zlib.BrotliOptions):node.zlib.BrotliCompress;
	/**
		Creates and returns a new `BrotliDecompress` object.
	**/
	static function createBrotliDecompress(?options:node.zlib.BrotliOptions):node.zlib.BrotliDecompress;
	/**
		Creates and returns a new `Gzip` object.
		See `example`.
	**/
	static function createGzip(?options:node.zlib.ZlibOptions):node.zlib.Gzip;
	/**
		Creates and returns a new `Gunzip` object.
	**/
	static function createGunzip(?options:node.zlib.ZlibOptions):node.zlib.Gunzip;
	/**
		Creates and returns a new `Deflate` object.
	**/
	static function createDeflate(?options:node.zlib.ZlibOptions):node.zlib.Deflate;
	/**
		Creates and returns a new `Inflate` object.
	**/
	static function createInflate(?options:node.zlib.ZlibOptions):node.zlib.Inflate;
	/**
		Creates and returns a new `DeflateRaw` object.
		
		An upgrade of zlib from 1.2.8 to 1.2.11 changed behavior when `windowBits`is set to 8 for raw deflate streams. zlib would automatically set `windowBits`to 9 if was initially set to 8\. Newer
		versions of zlib will throw an exception,
		so Node.js restored the original behavior of upgrading a value of 8 to 9,
		since passing `windowBits = 9` to zlib actually results in a compressed stream
		that effectively uses an 8-bit window only.
	**/
	static function createDeflateRaw(?options:node.zlib.ZlibOptions):node.zlib.DeflateRaw;
	/**
		Creates and returns a new `InflateRaw` object.
	**/
	static function createInflateRaw(?options:node.zlib.ZlibOptions):node.zlib.InflateRaw;
	/**
		Creates and returns a new `Unzip` object.
	**/
	static function createUnzip(?options:node.zlib.ZlibOptions):node.zlib.Unzip;
	@:overload(function(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void { })
	static function brotliCompress(buf:node.zlib.InputType, options:node.zlib.BrotliOptions, callback:node.zlib.CompressCallback):Void;
	/**
		Compress a chunk of data with `BrotliCompress`.
	**/
	static function brotliCompressSync(buf:node.zlib.InputType, ?options:node.zlib.BrotliOptions):node.buffer.Buffer;
	@:overload(function(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void { })
	static function brotliDecompress(buf:node.zlib.InputType, options:node.zlib.BrotliOptions, callback:node.zlib.CompressCallback):Void;
	/**
		Decompress a chunk of data with `BrotliDecompress`.
	**/
	static function brotliDecompressSync(buf:node.zlib.InputType, ?options:node.zlib.BrotliOptions):node.buffer.Buffer;
	@:overload(function(buf:node.zlib.InputType, options:node.zlib.ZlibOptions, callback:node.zlib.CompressCallback):Void { })
	static function deflate(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void;
	/**
		Compress a chunk of data with `Deflate`.
	**/
	static function deflateSync(buf:node.zlib.InputType, ?options:node.zlib.ZlibOptions):node.buffer.Buffer;
	@:overload(function(buf:node.zlib.InputType, options:node.zlib.ZlibOptions, callback:node.zlib.CompressCallback):Void { })
	static function deflateRaw(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void;
	/**
		Compress a chunk of data with `DeflateRaw`.
	**/
	static function deflateRawSync(buf:node.zlib.InputType, ?options:node.zlib.ZlibOptions):node.buffer.Buffer;
	@:overload(function(buf:node.zlib.InputType, options:node.zlib.ZlibOptions, callback:node.zlib.CompressCallback):Void { })
	static function gzip(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void;
	/**
		Compress a chunk of data with `Gzip`.
	**/
	static function gzipSync(buf:node.zlib.InputType, ?options:node.zlib.ZlibOptions):node.buffer.Buffer;
	@:overload(function(buf:node.zlib.InputType, options:node.zlib.ZlibOptions, callback:node.zlib.CompressCallback):Void { })
	static function gunzip(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void;
	/**
		Decompress a chunk of data with `Gunzip`.
	**/
	static function gunzipSync(buf:node.zlib.InputType, ?options:node.zlib.ZlibOptions):node.buffer.Buffer;
	@:overload(function(buf:node.zlib.InputType, options:node.zlib.ZlibOptions, callback:node.zlib.CompressCallback):Void { })
	static function inflate(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void;
	/**
		Decompress a chunk of data with `Inflate`.
	**/
	static function inflateSync(buf:node.zlib.InputType, ?options:node.zlib.ZlibOptions):node.buffer.Buffer;
	@:overload(function(buf:node.zlib.InputType, options:node.zlib.ZlibOptions, callback:node.zlib.CompressCallback):Void { })
	static function inflateRaw(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void;
	/**
		Decompress a chunk of data with `InflateRaw`.
	**/
	static function inflateRawSync(buf:node.zlib.InputType, ?options:node.zlib.ZlibOptions):node.buffer.Buffer;
	@:overload(function(buf:node.zlib.InputType, options:node.zlib.ZlibOptions, callback:node.zlib.CompressCallback):Void { })
	static function unzip(buf:node.zlib.InputType, callback:node.zlib.CompressCallback):Void;
	/**
		Decompress a chunk of data with `Unzip`.
	**/
	static function unzipSync(buf:node.zlib.InputType, ?options:node.zlib.ZlibOptions):node.buffer.Buffer;
	static final Z_NO_FLUSH : Float;
	static final Z_PARTIAL_FLUSH : Float;
	static final Z_SYNC_FLUSH : Float;
	static final Z_FULL_FLUSH : Float;
	static final Z_FINISH : Float;
	static final Z_BLOCK : Float;
	static final Z_TREES : Float;
	static final Z_OK : Float;
	static final Z_STREAM_END : Float;
	static final Z_NEED_DICT : Float;
	static final Z_ERRNO : Float;
	static final Z_STREAM_ERROR : Float;
	static final Z_DATA_ERROR : Float;
	static final Z_MEM_ERROR : Float;
	static final Z_BUF_ERROR : Float;
	static final Z_VERSION_ERROR : Float;
	static final Z_NO_COMPRESSION : Float;
	static final Z_BEST_SPEED : Float;
	static final Z_BEST_COMPRESSION : Float;
	static final Z_DEFAULT_COMPRESSION : Float;
	static final Z_FILTERED : Float;
	static final Z_HUFFMAN_ONLY : Float;
	static final Z_RLE : Float;
	static final Z_FIXED : Float;
	static final Z_DEFAULT_STRATEGY : Float;
	static final Z_BINARY : Float;
	static final Z_TEXT : Float;
	static final Z_ASCII : Float;
	static final Z_UNKNOWN : Float;
	static final Z_DEFLATED : Float;
}