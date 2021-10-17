package node.stream;

/**
	A module method to pipe between streams and generators forwarding errors and
	properly cleaning up and provide a callback when the pipeline is complete.
	
	```js
	const { pipeline } = require('stream');
	const fs = require('fs');
	const zlib = require('zlib');
	
	// Use the pipeline API to easily pipe a series of streams
	// together and get notified when the pipeline is fully done.
	
	// A pipeline to gzip a potentially huge tar file efficiently:
	
	pipeline(
	   fs.createReadStream('archive.tar'),
	   zlib.createGzip(),
	   fs.createWriteStream('archive.tar.gz'),
	   (err) => {
	     if (err) {
	       console.error('Pipeline failed.', err);
	     } else {
	       console.log('Pipeline succeeded.');
	     }
	   }
	);
	```
	
	The `pipeline` API provides a promise version, which can also
	receive an options argument as the last parameter with a`signal` `AbortSignal` property. When the signal is aborted,`destroy` will be called on the underlying pipeline, with
	an`AbortError`.
	
	```js
	const { pipeline } = require('stream/promises');
	
	async function run() {
	   await pipeline(
	     fs.createReadStream('archive.tar'),
	     zlib.createGzip(),
	     fs.createWriteStream('archive.tar.gz')
	   );
	   console.log('Pipeline succeeded.');
	}
	
	run().catch(console.error);
	```
	
	To use an `AbortSignal`, pass it inside an options object,
	as the last argument:
	
	```js
	const { pipeline } = require('stream/promises');
	
	async function run() {
	   const ac = new AbortController();
	   const signal = ac.signal;
	
	   setTimeout(() => ac.abort(), 1);
	   await pipeline(
	     fs.createReadStream('archive.tar'),
	     zlib.createGzip(),
	     fs.createWriteStream('archive.tar.gz'),
	     { signal },
	   );
	}
	
	run().catch(console.error); // AbortError
	```
	
	The `pipeline` API also supports async generators:
	
	```js
	const { pipeline } = require('stream/promises');
	const fs = require('fs');
	
	async function run() {
	   await pipeline(
	     fs.createReadStream('lowercase.txt'),
	     async function* (source, signal) {
	       source.setEncoding('utf8');  // Work with strings rather than `Buffer`s.
	       for await (const chunk of source) {
	         yield await processChunk(chunk, { signal });
	       }
	     },
	     fs.createWriteStream('uppercase.txt')
	   );
	   console.log('Pipeline succeeded.');
	}
	
	run().catch(console.error);
	```
	
	Remember to handle the `signal` argument passed into the async generator.
	Especially in the case where the async generator is the source for the
	pipeline (i.e. first argument) or the pipeline will never complete.
	
	```js
	const { pipeline } = require('stream/promises');
	const fs = require('fs');
	
	async function run() {
	   await pipeline(
	     async function * (signal) {
	       await someLongRunningfn({ signal });
	       yield 'asd';
	     },
	     fs.createWriteStream('uppercase.txt')
	   );
	   console.log('Pipeline succeeded.');
	}
	
	run().catch(console.error);
	```
	
	`stream.pipeline()` will call `stream.destroy(err)` on all streams except:
	
	* `Readable` streams which have emitted `'end'` or `'close'`.
	* `Writable` streams which have emitted `'finish'` or `'close'`.
	
	`stream.pipeline()` leaves dangling event listeners on the streams
	after the `callback` has been invoked. In the case of reuse of streams after
	failure, this can cause event listener leaks and swallowed errors.
**/
@:jsRequire("stream", "pipeline") @valueModuleOnly extern class Pipeline {
	/**
		A module method to pipe between streams and generators forwarding errors and
		properly cleaning up and provide a callback when the pipeline is complete.
		
		```js
		const { pipeline } = require('stream');
		const fs = require('fs');
		const zlib = require('zlib');
		
		// Use the pipeline API to easily pipe a series of streams
		// together and get notified when the pipeline is fully done.
		
		// A pipeline to gzip a potentially huge tar file efficiently:
		
		pipeline(
		   fs.createReadStream('archive.tar'),
		   zlib.createGzip(),
		   fs.createWriteStream('archive.tar.gz'),
		   (err) => {
		     if (err) {
		       console.error('Pipeline failed.', err);
		     } else {
		       console.log('Pipeline succeeded.');
		     }
		   }
		);
		```
		
		The `pipeline` API provides a promise version, which can also
		receive an options argument as the last parameter with a`signal` `AbortSignal` property. When the signal is aborted,`destroy` will be called on the underlying pipeline, with
		an`AbortError`.
		
		```js
		const { pipeline } = require('stream/promises');
		
		async function run() {
		   await pipeline(
		     fs.createReadStream('archive.tar'),
		     zlib.createGzip(),
		     fs.createWriteStream('archive.tar.gz')
		   );
		   console.log('Pipeline succeeded.');
		}
		
		run().catch(console.error);
		```
		
		To use an `AbortSignal`, pass it inside an options object,
		as the last argument:
		
		```js
		const { pipeline } = require('stream/promises');
		
		async function run() {
		   const ac = new AbortController();
		   const signal = ac.signal;
		
		   setTimeout(() => ac.abort(), 1);
		   await pipeline(
		     fs.createReadStream('archive.tar'),
		     zlib.createGzip(),
		     fs.createWriteStream('archive.tar.gz'),
		     { signal },
		   );
		}
		
		run().catch(console.error); // AbortError
		```
		
		The `pipeline` API also supports async generators:
		
		```js
		const { pipeline } = require('stream/promises');
		const fs = require('fs');
		
		async function run() {
		   await pipeline(
		     fs.createReadStream('lowercase.txt'),
		     async function* (source, signal) {
		       source.setEncoding('utf8');  // Work with strings rather than `Buffer`s.
		       for await (const chunk of source) {
		         yield await processChunk(chunk, { signal });
		       }
		     },
		     fs.createWriteStream('uppercase.txt')
		   );
		   console.log('Pipeline succeeded.');
		}
		
		run().catch(console.error);
		```
		
		Remember to handle the `signal` argument passed into the async generator.
		Especially in the case where the async generator is the source for the
		pipeline (i.e. first argument) or the pipeline will never complete.
		
		```js
		const { pipeline } = require('stream/promises');
		const fs = require('fs');
		
		async function run() {
		   await pipeline(
		     async function * (signal) {
		       await someLongRunningfn({ signal });
		       yield 'asd';
		     },
		     fs.createWriteStream('uppercase.txt')
		   );
		   console.log('Pipeline succeeded.');
		}
		
		run().catch(console.error);
		```
		
		`stream.pipeline()` will call `stream.destroy(err)` on all streams except:
		
		* `Readable` streams which have emitted `'end'` or `'close'`.
		* `Writable` streams which have emitted `'finish'` or `'close'`.
		
		`stream.pipeline()` leaves dangling event listeners on the streams
		after the `callback` has been invoked. In the case of reuse of streams after
		failure, this can cause event listener leaks and swallowed errors.
	**/
	@:overload(function<A, T1, B>(source:A, transform1:T1, destination:B, ?callback:PipelineCallback<B>):Dynamic { })
	@:overload(function<A, T1, T2, B>(source:A, transform1:T1, transform2:T2, destination:B, ?callback:PipelineCallback<B>):Dynamic { })
	@:overload(function<A, T1, T2, T3, B>(source:A, transform1:T1, transform2:T2, transform3:T3, destination:B, ?callback:PipelineCallback<B>):Dynamic { })
	@:overload(function<A, T1, T2, T3, T4, B>(source:A, transform1:T1, transform2:T2, transform3:T3, transform4:T4, destination:B, ?callback:PipelineCallback<B>):Dynamic { })
	@:overload(function(streams:haxe.ds.ReadOnlyArray<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>, ?callback:(err:Null<global.nodejs.ErrnoException>) -> Void):global.nodejs.WritableStream { })
	@:overload(function(stream1:global.nodejs.ReadableStream, stream2:ts.AnyOf2<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:haxe.extern.Rest<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadWriteStream, (err:Null<global.nodejs.ErrnoException>) -> Void>>):global.nodejs.WritableStream { })
	@:selfCall
	static function call<A, B>(source:A, destination:B, ?callback:PipelineCallback<B>):Dynamic;
}