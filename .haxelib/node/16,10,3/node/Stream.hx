package node;

@:jsRequire("stream") extern class Stream extends Events {
	function new();
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	static var prototype : Stream;
	/**
		Attaches an AbortSignal to a readable or writeable stream. This lets code
		control stream destruction using an `AbortController`.
		
		Calling `abort` on the `AbortController` corresponding to the passed`AbortSignal` will behave the same way as calling `.destroy(new AbortError())`on the stream.
		
		```js
		const fs = require('fs');
		
		const controller = new AbortController();
		const read = addAbortSignal(
		   controller.signal,
		   fs.createReadStream(('object.json'))
		);
		// Later, abort the operation closing the stream
		controller.abort();
		```
		
		Or using an `AbortSignal` with a readable stream as an async iterable:
		
		```js
		const controller = new AbortController();
		setTimeout(() => controller.abort(), 10_000); // set a timeout
		const stream = addAbortSignal(
		   controller.signal,
		   fs.createReadStream(('object.json'))
		);
		(async () => {
		   try {
		     for await (const chunk of stream) {
		       await process(chunk);
		     }
		   } catch (e) {
		     if (e.name === 'AbortError') {
		       // The operation was cancelled
		     } else {
		       throw e;
		     }
		   }
		})();
		```
	**/
	static function addAbortSignal<T>(signal:js.html.AbortSignal, stream:T):T;
	/**
		A function to get notified when a stream is no longer readable, writable
		or has experienced an error or a premature close event.
		
		```js
		const { finished } = require('stream');
		
		const rs = fs.createReadStream('archive.tar');
		
		finished(rs, (err) => {
		   if (err) {
		     console.error('Stream failed.', err);
		   } else {
		     console.log('Stream is done reading.');
		   }
		});
		
		rs.resume(); // Drain the stream.
		```
		
		Especially useful in error handling scenarios where a stream is destroyed
		prematurely (like an aborted HTTP request), and will not emit `'end'`or `'finish'`.
		
		The `finished` API provides promise version:
		
		```js
		const { finished } = require('stream/promises');
		
		const rs = fs.createReadStream('archive.tar');
		
		async function run() {
		   await finished(rs);
		   console.log('Stream is done reading.');
		}
		
		run().catch(console.error);
		rs.resume(); // Drain the stream.
		```
		
		`stream.finished()` leaves dangling event listeners (in particular`'error'`, `'end'`, `'finish'` and `'close'`) after `callback` has been
		invoked. The reason for this is so that unexpected `'error'` events (due to
		incorrect stream implementations) do not cause unexpected crashes.
		If this is unwanted behavior then the returned cleanup function needs to be
		invoked in the callback:
		
		```js
		const cleanup = finished(rs, (err) => {
		   cleanup();
		   // ...
		});
		```
	**/
	@:overload(function(stream:ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void { })
	static function finished(stream:ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>, options:node.stream.FinishedOptions, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void;
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
	@:overload(function<A, T1, B>(source:A, transform1:T1, destination:B, ?callback:node.stream.PipelineCallback<B>):Dynamic { })
	@:overload(function<A, T1, T2, B>(source:A, transform1:T1, transform2:T2, destination:B, ?callback:node.stream.PipelineCallback<B>):Dynamic { })
	@:overload(function<A, T1, T2, T3, B>(source:A, transform1:T1, transform2:T2, transform3:T3, destination:B, ?callback:node.stream.PipelineCallback<B>):Dynamic { })
	@:overload(function<A, T1, T2, T3, T4, B>(source:A, transform1:T1, transform2:T2, transform3:T3, transform4:T4, destination:B, ?callback:node.stream.PipelineCallback<B>):Dynamic { })
	@:overload(function(streams:haxe.ds.ReadOnlyArray<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>, ?callback:(err:Null<global.nodejs.ErrnoException>) -> Void):global.nodejs.WritableStream { })
	@:overload(function(stream1:global.nodejs.ReadableStream, stream2:ts.AnyOf2<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:haxe.extern.Rest<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadWriteStream, (err:Null<global.nodejs.ErrnoException>) -> Void>>):global.nodejs.WritableStream { })
	static function pipeline<A, B>(source:A, destination:B, ?callback:node.stream.PipelineCallback<B>):Dynamic;
	static final promises : {
		function finished(stream:ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>, ?options:node.stream.FinishedOptions):js.lib.Promise<ts.Undefined>;
		@:overload(function<A, T1, B>(source:A, transform1:T1, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
		@:overload(function<A, T1, T2, B>(source:A, transform1:T1, transform2:T2, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
		@:overload(function<A, T1, T2, T3, B>(source:A, transform1:T1, transform2:T2, transform3:T3, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
		@:overload(function<A, T1, T2, T3, T4, B>(source:A, transform1:T1, transform2:T2, transform3:T3, transform4:T4, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
		@:overload(function(streams:haxe.ds.ReadOnlyArray<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>, ?options:node.stream.PipelineOptions):js.lib.Promise<ts.Undefined> { })
		@:overload(function(stream1:global.nodejs.ReadableStream, stream2:ts.AnyOf2<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:haxe.extern.Rest<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadWriteStream, node.stream.PipelineOptions>>):js.lib.Promise<ts.Undefined> { })
		function pipeline<A, B>(source:A, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B>;
	};
	static final consumers : {
		function buffer(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<node.buffer.Buffer>;
		function text(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<String>;
		function arrayBuffer(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<js.lib.ArrayBuffer>;
		function blob(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<js.html.Blob>;
		function json(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<Any>;
	};
}