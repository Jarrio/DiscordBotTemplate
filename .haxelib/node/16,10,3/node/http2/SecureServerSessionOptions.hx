package node.http2;

typedef SecureServerSessionOptions = {
	@:optional
	var Http1IncomingMessage : {
		var prototype : node.http.IncomingMessage;
		/**
			A utility method for creating Readable Streams out of iterators.
		**/
		function from(iterable:ts.AnyOf2<Iterable<Dynamic>, js.lib.AsyncIterable<Dynamic>>, ?options:node.stream.ReadableOptions):node.stream.Readable;
		/**
			Returns whether the stream has been read from or cancelled.
		**/
		function isDisturbed(stream:ts.AnyOf2<global.nodejs.ReadableStream, node.stream.Readable>):Bool;
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
		function addAbortSignal<T>(signal:js.html.AbortSignal, stream:T):T;
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
		function finished(stream:ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>, options:node.stream.FinishedOptions, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void;
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
		function pipeline<A, B>(source:A, destination:B, ?callback:node.stream.PipelineCallback<B>):Dynamic;
		final promises : {
			function finished(stream:ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>, ?options:node.stream.FinishedOptions):js.lib.Promise<ts.Undefined>;
			@:overload(function<A, T1, B>(source:A, transform1:T1, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
			@:overload(function<A, T1, T2, B>(source:A, transform1:T1, transform2:T2, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
			@:overload(function<A, T1, T2, T3, B>(source:A, transform1:T1, transform2:T2, transform3:T3, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
			@:overload(function<A, T1, T2, T3, T4, B>(source:A, transform1:T1, transform2:T2, transform3:T3, transform4:T4, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
			@:overload(function(streams:haxe.ds.ReadOnlyArray<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>, ?options:node.stream.PipelineOptions):js.lib.Promise<ts.Undefined> { })
			@:overload(function(stream1:global.nodejs.ReadableStream, stream2:ts.AnyOf2<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:haxe.extern.Rest<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadWriteStream, node.stream.PipelineOptions>>):js.lib.Promise<ts.Undefined> { })
			function pipeline<A, B>(source:A, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B>;
		};
		final consumers : {
			function buffer(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<node.buffer.Buffer>;
			function text(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<String>;
			function arrayBuffer(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<js.lib.ArrayBuffer>;
			function blob(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<js.html.Blob>;
			function json(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<Any>;
		};
		/**
			Creates a `Promise` that is fulfilled when the `EventEmitter` emits the given
			event or that is rejected if the `EventEmitter` emits `'error'` while waiting.
			The `Promise` will resolve with an array of all the arguments emitted to the
			given event.
			
			This method is intentionally generic and works with the web platform [EventTarget](https://dom.spec.whatwg.org/#interface-eventtarget) interface, which has no special`'error'` event
			semantics and does not listen to the `'error'` event.
			
			```js
			const { once, EventEmitter } = require('events');
			
			async function run() {
			   const ee = new EventEmitter();
			
			   process.nextTick(() => {
			     ee.emit('myevent', 42);
			   });
			
			   const [value] = await once(ee, 'myevent');
			   console.log(value);
			
			   const err = new Error('kaboom');
			   process.nextTick(() => {
			     ee.emit('error', err);
			   });
			
			   try {
			     await once(ee, 'myevent');
			   } catch (err) {
			     console.log('error happened', err);
			   }
			}
			
			run();
			```
			
			The special handling of the `'error'` event is only used when `events.once()`is used to wait for another event. If `events.once()` is used to wait for the
			'`error'` event itself, then it is treated as any other kind of event without
			special handling:
			
			```js
			const { EventEmitter, once } = require('events');
			
			const ee = new EventEmitter();
			
			once(ee, 'error')
			   .then(([err]) => console.log('ok', err.message))
			   .catch((err) => console.log('error', err.message));
			
			ee.emit('error', new Error('boom'));
			
			// Prints: ok boom
			```
			
			An `AbortSignal` can be used to cancel waiting for the event:
			
			```js
			const { EventEmitter, once } = require('events');
			
			const ee = new EventEmitter();
			const ac = new AbortController();
			
			async function foo(emitter, event, signal) {
			   try {
			     await once(emitter, event, { signal });
			     console.log('event emitted!');
			   } catch (error) {
			     if (error.name === 'AbortError') {
			       console.error('Waiting for the event was canceled!');
			     } else {
			       console.error('There was an error', error.message);
			     }
			   }
			}
			
			foo(ee, 'foo', ac.signal);
			ac.abort(); // Abort waiting for the event
			ee.emit('foo'); // Prints: Waiting for the event was canceled!
			```
		**/
		@:overload(function(emitter:SecureServerSessionOptions, eventName:String, ?options:SecureServerSessionOptions):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:SecureServerSessionOptions, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:SecureServerSessionOptions):js.lib.Promise<Array<Dynamic>>;
		/**
			```js
			const { on, EventEmitter } = require('events');
			
			(async () => {
			   const ee = new EventEmitter();
			
			   // Emit later on
			   process.nextTick(() => {
			     ee.emit('foo', 'bar');
			     ee.emit('foo', 42);
			   });
			
			   for await (const event of on(ee, 'foo')) {
			     // The execution of this inner block is synchronous and it
			     // processes one event at a time (even with await). Do not use
			     // if concurrent execution is required.
			     console.log(event); // prints ['bar'] [42]
			   }
			   // Unreachable here
			})();
			```
			
			Returns an `AsyncIterator` that iterates `eventName` events. It will throw
			if the `EventEmitter` emits `'error'`. It removes all listeners when
			exiting the loop. The `value` returned by each iteration is an array
			composed of the emitted event arguments.
			
			An `AbortSignal` can be used to cancel waiting on events:
			
			```js
			const { on, EventEmitter } = require('events');
			const ac = new AbortController();
			
			(async () => {
			   const ee = new EventEmitter();
			
			   // Emit later on
			   process.nextTick(() => {
			     ee.emit('foo', 'bar');
			     ee.emit('foo', 42);
			   });
			
			   for await (const event of on(ee, 'foo', { signal: ac.signal })) {
			     // The execution of this inner block is synchronous and it
			     // processes one event at a time (even with await). Do not use
			     // if concurrent execution is required.
			     console.log(event); // prints ['bar'] [42]
			   }
			   // Unreachable here
			})();
			
			process.nextTick(() => ac.abort());
			```
		**/
		function on(emitter:global.nodejs.EventEmitter, eventName:String, ?options:SecureServerSessionOptions):js.lib.AsyncIterableIterator<Dynamic>;
		/**
			A class method that returns the number of listeners for the given `eventName`registered on the given `emitter`.
			
			```js
			const { EventEmitter, listenerCount } = require('events');
			const myEmitter = new EventEmitter();
			myEmitter.on('event', () => {});
			myEmitter.on('event', () => {});
			console.log(listenerCount(myEmitter, 'event'));
			// Prints: 2
			```
		**/
		function listenerCount(emitter:global.nodejs.EventEmitter, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
		/**
			Returns a copy of the array of listeners for the event named `eventName`.
			
			For `EventEmitter`s this behaves exactly the same as calling `.listeners` on
			the emitter.
			
			For `EventTarget`s this is the only way to get the event listeners for the
			event target. This is useful for debugging and diagnostic purposes.
			
			```js
			const { getEventListeners, EventEmitter } = require('events');
			
			{
			   const ee = new EventEmitter();
			   const listener = () => console.log('Events are fun');
			   ee.on('foo', listener);
			   getEventListeners(ee, 'foo'); // [listener]
			}
			{
			   const et = new EventTarget();
			   const listener = () => console.log('Events are fun');
			   et.addEventListener('foo', listener);
			   getEventListeners(et, 'foo'); // [listener]
			}
			```
		**/
		function getEventListeners(emitter:ts.AnyOf2<global.nodejs.EventEmitter, SecureServerSessionOptions>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
		/**
			This symbol shall be used to install a listener for only monitoring `'error'`
			events. Listeners installed using this symbol are called before the regular
			`'error'` listeners are called.
			
			Installing a listener using this symbol does not change the behavior once an
			`'error'` event is emitted, therefore the process will still crash if no
			regular `'error'` listener is installed.
		**/
		final errorMonitor : js.lib.Symbol;
		final captureRejectionSymbol : js.lib.Symbol;
		/**
			Sets or gets the default captureRejection value for all emitters.
		**/
		var captureRejections : Bool;
		var defaultMaxListeners : Float;
	};
	@:optional
	var Http1ServerResponse : {
		var prototype : node.http.ServerResponse;
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
		function addAbortSignal<T>(signal:js.html.AbortSignal, stream:T):T;
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
		function finished(stream:ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>, options:node.stream.FinishedOptions, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void;
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
		function pipeline<A, B>(source:A, destination:B, ?callback:node.stream.PipelineCallback<B>):Dynamic;
		final promises : {
			function finished(stream:ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>, ?options:node.stream.FinishedOptions):js.lib.Promise<ts.Undefined>;
			@:overload(function<A, T1, B>(source:A, transform1:T1, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
			@:overload(function<A, T1, T2, B>(source:A, transform1:T1, transform2:T2, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
			@:overload(function<A, T1, T2, T3, B>(source:A, transform1:T1, transform2:T2, transform3:T3, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
			@:overload(function<A, T1, T2, T3, T4, B>(source:A, transform1:T1, transform2:T2, transform3:T3, transform4:T4, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
			@:overload(function(streams:haxe.ds.ReadOnlyArray<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>, ?options:node.stream.PipelineOptions):js.lib.Promise<ts.Undefined> { })
			@:overload(function(stream1:global.nodejs.ReadableStream, stream2:ts.AnyOf2<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:haxe.extern.Rest<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadWriteStream, node.stream.PipelineOptions>>):js.lib.Promise<ts.Undefined> { })
			function pipeline<A, B>(source:A, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B>;
		};
		final consumers : {
			function buffer(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<node.buffer.Buffer>;
			function text(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<String>;
			function arrayBuffer(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<js.lib.ArrayBuffer>;
			function blob(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<js.html.Blob>;
			function json(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<Any>;
		};
		/**
			Creates a `Promise` that is fulfilled when the `EventEmitter` emits the given
			event or that is rejected if the `EventEmitter` emits `'error'` while waiting.
			The `Promise` will resolve with an array of all the arguments emitted to the
			given event.
			
			This method is intentionally generic and works with the web platform [EventTarget](https://dom.spec.whatwg.org/#interface-eventtarget) interface, which has no special`'error'` event
			semantics and does not listen to the `'error'` event.
			
			```js
			const { once, EventEmitter } = require('events');
			
			async function run() {
			   const ee = new EventEmitter();
			
			   process.nextTick(() => {
			     ee.emit('myevent', 42);
			   });
			
			   const [value] = await once(ee, 'myevent');
			   console.log(value);
			
			   const err = new Error('kaboom');
			   process.nextTick(() => {
			     ee.emit('error', err);
			   });
			
			   try {
			     await once(ee, 'myevent');
			   } catch (err) {
			     console.log('error happened', err);
			   }
			}
			
			run();
			```
			
			The special handling of the `'error'` event is only used when `events.once()`is used to wait for another event. If `events.once()` is used to wait for the
			'`error'` event itself, then it is treated as any other kind of event without
			special handling:
			
			```js
			const { EventEmitter, once } = require('events');
			
			const ee = new EventEmitter();
			
			once(ee, 'error')
			   .then(([err]) => console.log('ok', err.message))
			   .catch((err) => console.log('error', err.message));
			
			ee.emit('error', new Error('boom'));
			
			// Prints: ok boom
			```
			
			An `AbortSignal` can be used to cancel waiting for the event:
			
			```js
			const { EventEmitter, once } = require('events');
			
			const ee = new EventEmitter();
			const ac = new AbortController();
			
			async function foo(emitter, event, signal) {
			   try {
			     await once(emitter, event, { signal });
			     console.log('event emitted!');
			   } catch (error) {
			     if (error.name === 'AbortError') {
			       console.error('Waiting for the event was canceled!');
			     } else {
			       console.error('There was an error', error.message);
			     }
			   }
			}
			
			foo(ee, 'foo', ac.signal);
			ac.abort(); // Abort waiting for the event
			ee.emit('foo'); // Prints: Waiting for the event was canceled!
			```
		**/
		@:overload(function(emitter:SecureServerSessionOptions, eventName:String, ?options:SecureServerSessionOptions):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:SecureServerSessionOptions, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:SecureServerSessionOptions):js.lib.Promise<Array<Dynamic>>;
		/**
			```js
			const { on, EventEmitter } = require('events');
			
			(async () => {
			   const ee = new EventEmitter();
			
			   // Emit later on
			   process.nextTick(() => {
			     ee.emit('foo', 'bar');
			     ee.emit('foo', 42);
			   });
			
			   for await (const event of on(ee, 'foo')) {
			     // The execution of this inner block is synchronous and it
			     // processes one event at a time (even with await). Do not use
			     // if concurrent execution is required.
			     console.log(event); // prints ['bar'] [42]
			   }
			   // Unreachable here
			})();
			```
			
			Returns an `AsyncIterator` that iterates `eventName` events. It will throw
			if the `EventEmitter` emits `'error'`. It removes all listeners when
			exiting the loop. The `value` returned by each iteration is an array
			composed of the emitted event arguments.
			
			An `AbortSignal` can be used to cancel waiting on events:
			
			```js
			const { on, EventEmitter } = require('events');
			const ac = new AbortController();
			
			(async () => {
			   const ee = new EventEmitter();
			
			   // Emit later on
			   process.nextTick(() => {
			     ee.emit('foo', 'bar');
			     ee.emit('foo', 42);
			   });
			
			   for await (const event of on(ee, 'foo', { signal: ac.signal })) {
			     // The execution of this inner block is synchronous and it
			     // processes one event at a time (even with await). Do not use
			     // if concurrent execution is required.
			     console.log(event); // prints ['bar'] [42]
			   }
			   // Unreachable here
			})();
			
			process.nextTick(() => ac.abort());
			```
		**/
		function on(emitter:global.nodejs.EventEmitter, eventName:String, ?options:SecureServerSessionOptions):js.lib.AsyncIterableIterator<Dynamic>;
		/**
			A class method that returns the number of listeners for the given `eventName`registered on the given `emitter`.
			
			```js
			const { EventEmitter, listenerCount } = require('events');
			const myEmitter = new EventEmitter();
			myEmitter.on('event', () => {});
			myEmitter.on('event', () => {});
			console.log(listenerCount(myEmitter, 'event'));
			// Prints: 2
			```
		**/
		function listenerCount(emitter:global.nodejs.EventEmitter, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
		/**
			Returns a copy of the array of listeners for the event named `eventName`.
			
			For `EventEmitter`s this behaves exactly the same as calling `.listeners` on
			the emitter.
			
			For `EventTarget`s this is the only way to get the event listeners for the
			event target. This is useful for debugging and diagnostic purposes.
			
			```js
			const { getEventListeners, EventEmitter } = require('events');
			
			{
			   const ee = new EventEmitter();
			   const listener = () => console.log('Events are fun');
			   ee.on('foo', listener);
			   getEventListeners(ee, 'foo'); // [listener]
			}
			{
			   const et = new EventTarget();
			   const listener = () => console.log('Events are fun');
			   et.addEventListener('foo', listener);
			   getEventListeners(et, 'foo'); // [listener]
			}
			```
		**/
		function getEventListeners(emitter:ts.AnyOf2<global.nodejs.EventEmitter, SecureServerSessionOptions>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
		/**
			This symbol shall be used to install a listener for only monitoring `'error'`
			events. Listeners installed using this symbol are called before the regular
			`'error'` listeners are called.
			
			Installing a listener using this symbol does not change the behavior once an
			`'error'` event is emitted, therefore the process will still crash if no
			regular `'error'` listener is installed.
		**/
		final errorMonitor : js.lib.Symbol;
		final captureRejectionSymbol : js.lib.Symbol;
		/**
			Sets or gets the default captureRejection value for all emitters.
		**/
		var captureRejections : Bool;
		var defaultMaxListeners : Float;
	};
	@:optional
	var Http2ServerRequest : {
		var prototype : Http2ServerRequest;
		/**
			A utility method for creating Readable Streams out of iterators.
		**/
		function from(iterable:ts.AnyOf2<Iterable<Dynamic>, js.lib.AsyncIterable<Dynamic>>, ?options:node.stream.ReadableOptions):node.stream.Readable;
		/**
			Returns whether the stream has been read from or cancelled.
		**/
		function isDisturbed(stream:ts.AnyOf2<global.nodejs.ReadableStream, node.stream.Readable>):Bool;
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
		function addAbortSignal<T>(signal:js.html.AbortSignal, stream:T):T;
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
		function finished(stream:ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>, options:node.stream.FinishedOptions, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void;
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
		function pipeline<A, B>(source:A, destination:B, ?callback:node.stream.PipelineCallback<B>):Dynamic;
		final promises : {
			function finished(stream:ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>, ?options:node.stream.FinishedOptions):js.lib.Promise<ts.Undefined>;
			@:overload(function<A, T1, B>(source:A, transform1:T1, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
			@:overload(function<A, T1, T2, B>(source:A, transform1:T1, transform2:T2, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
			@:overload(function<A, T1, T2, T3, B>(source:A, transform1:T1, transform2:T2, transform3:T3, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
			@:overload(function<A, T1, T2, T3, T4, B>(source:A, transform1:T1, transform2:T2, transform3:T3, transform4:T4, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
			@:overload(function(streams:haxe.ds.ReadOnlyArray<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>, ?options:node.stream.PipelineOptions):js.lib.Promise<ts.Undefined> { })
			@:overload(function(stream1:global.nodejs.ReadableStream, stream2:ts.AnyOf2<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:haxe.extern.Rest<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadWriteStream, node.stream.PipelineOptions>>):js.lib.Promise<ts.Undefined> { })
			function pipeline<A, B>(source:A, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B>;
		};
		final consumers : {
			function buffer(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<node.buffer.Buffer>;
			function text(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<String>;
			function arrayBuffer(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<js.lib.ArrayBuffer>;
			function blob(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<js.html.Blob>;
			function json(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<Any>;
		};
		/**
			Creates a `Promise` that is fulfilled when the `EventEmitter` emits the given
			event or that is rejected if the `EventEmitter` emits `'error'` while waiting.
			The `Promise` will resolve with an array of all the arguments emitted to the
			given event.
			
			This method is intentionally generic and works with the web platform [EventTarget](https://dom.spec.whatwg.org/#interface-eventtarget) interface, which has no special`'error'` event
			semantics and does not listen to the `'error'` event.
			
			```js
			const { once, EventEmitter } = require('events');
			
			async function run() {
			   const ee = new EventEmitter();
			
			   process.nextTick(() => {
			     ee.emit('myevent', 42);
			   });
			
			   const [value] = await once(ee, 'myevent');
			   console.log(value);
			
			   const err = new Error('kaboom');
			   process.nextTick(() => {
			     ee.emit('error', err);
			   });
			
			   try {
			     await once(ee, 'myevent');
			   } catch (err) {
			     console.log('error happened', err);
			   }
			}
			
			run();
			```
			
			The special handling of the `'error'` event is only used when `events.once()`is used to wait for another event. If `events.once()` is used to wait for the
			'`error'` event itself, then it is treated as any other kind of event without
			special handling:
			
			```js
			const { EventEmitter, once } = require('events');
			
			const ee = new EventEmitter();
			
			once(ee, 'error')
			   .then(([err]) => console.log('ok', err.message))
			   .catch((err) => console.log('error', err.message));
			
			ee.emit('error', new Error('boom'));
			
			// Prints: ok boom
			```
			
			An `AbortSignal` can be used to cancel waiting for the event:
			
			```js
			const { EventEmitter, once } = require('events');
			
			const ee = new EventEmitter();
			const ac = new AbortController();
			
			async function foo(emitter, event, signal) {
			   try {
			     await once(emitter, event, { signal });
			     console.log('event emitted!');
			   } catch (error) {
			     if (error.name === 'AbortError') {
			       console.error('Waiting for the event was canceled!');
			     } else {
			       console.error('There was an error', error.message);
			     }
			   }
			}
			
			foo(ee, 'foo', ac.signal);
			ac.abort(); // Abort waiting for the event
			ee.emit('foo'); // Prints: Waiting for the event was canceled!
			```
		**/
		@:overload(function(emitter:SecureServerSessionOptions, eventName:String, ?options:SecureServerSessionOptions):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:SecureServerSessionOptions, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:SecureServerSessionOptions):js.lib.Promise<Array<Dynamic>>;
		/**
			```js
			const { on, EventEmitter } = require('events');
			
			(async () => {
			   const ee = new EventEmitter();
			
			   // Emit later on
			   process.nextTick(() => {
			     ee.emit('foo', 'bar');
			     ee.emit('foo', 42);
			   });
			
			   for await (const event of on(ee, 'foo')) {
			     // The execution of this inner block is synchronous and it
			     // processes one event at a time (even with await). Do not use
			     // if concurrent execution is required.
			     console.log(event); // prints ['bar'] [42]
			   }
			   // Unreachable here
			})();
			```
			
			Returns an `AsyncIterator` that iterates `eventName` events. It will throw
			if the `EventEmitter` emits `'error'`. It removes all listeners when
			exiting the loop. The `value` returned by each iteration is an array
			composed of the emitted event arguments.
			
			An `AbortSignal` can be used to cancel waiting on events:
			
			```js
			const { on, EventEmitter } = require('events');
			const ac = new AbortController();
			
			(async () => {
			   const ee = new EventEmitter();
			
			   // Emit later on
			   process.nextTick(() => {
			     ee.emit('foo', 'bar');
			     ee.emit('foo', 42);
			   });
			
			   for await (const event of on(ee, 'foo', { signal: ac.signal })) {
			     // The execution of this inner block is synchronous and it
			     // processes one event at a time (even with await). Do not use
			     // if concurrent execution is required.
			     console.log(event); // prints ['bar'] [42]
			   }
			   // Unreachable here
			})();
			
			process.nextTick(() => ac.abort());
			```
		**/
		function on(emitter:global.nodejs.EventEmitter, eventName:String, ?options:SecureServerSessionOptions):js.lib.AsyncIterableIterator<Dynamic>;
		/**
			A class method that returns the number of listeners for the given `eventName`registered on the given `emitter`.
			
			```js
			const { EventEmitter, listenerCount } = require('events');
			const myEmitter = new EventEmitter();
			myEmitter.on('event', () => {});
			myEmitter.on('event', () => {});
			console.log(listenerCount(myEmitter, 'event'));
			// Prints: 2
			```
		**/
		function listenerCount(emitter:global.nodejs.EventEmitter, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
		/**
			Returns a copy of the array of listeners for the event named `eventName`.
			
			For `EventEmitter`s this behaves exactly the same as calling `.listeners` on
			the emitter.
			
			For `EventTarget`s this is the only way to get the event listeners for the
			event target. This is useful for debugging and diagnostic purposes.
			
			```js
			const { getEventListeners, EventEmitter } = require('events');
			
			{
			   const ee = new EventEmitter();
			   const listener = () => console.log('Events are fun');
			   ee.on('foo', listener);
			   getEventListeners(ee, 'foo'); // [listener]
			}
			{
			   const et = new EventTarget();
			   const listener = () => console.log('Events are fun');
			   et.addEventListener('foo', listener);
			   getEventListeners(et, 'foo'); // [listener]
			}
			```
		**/
		function getEventListeners(emitter:ts.AnyOf2<global.nodejs.EventEmitter, SecureServerSessionOptions>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
		/**
			This symbol shall be used to install a listener for only monitoring `'error'`
			events. Listeners installed using this symbol are called before the regular
			`'error'` listeners are called.
			
			Installing a listener using this symbol does not change the behavior once an
			`'error'` event is emitted, therefore the process will still crash if no
			regular `'error'` listener is installed.
		**/
		final errorMonitor : js.lib.Symbol;
		final captureRejectionSymbol : js.lib.Symbol;
		/**
			Sets or gets the default captureRejection value for all emitters.
		**/
		var captureRejections : Bool;
		var defaultMaxListeners : Float;
	};
	@:optional
	var Http2ServerResponse : {
		var prototype : Http2ServerResponse;
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
		function addAbortSignal<T>(signal:js.html.AbortSignal, stream:T):T;
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
		function finished(stream:ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>, options:node.stream.FinishedOptions, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void;
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
		function pipeline<A, B>(source:A, destination:B, ?callback:node.stream.PipelineCallback<B>):Dynamic;
		final promises : {
			function finished(stream:ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>, ?options:node.stream.FinishedOptions):js.lib.Promise<ts.Undefined>;
			@:overload(function<A, T1, B>(source:A, transform1:T1, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
			@:overload(function<A, T1, T2, B>(source:A, transform1:T1, transform2:T2, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
			@:overload(function<A, T1, T2, T3, B>(source:A, transform1:T1, transform2:T2, transform3:T3, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
			@:overload(function<A, T1, T2, T3, T4, B>(source:A, transform1:T1, transform2:T2, transform3:T3, transform4:T4, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B> { })
			@:overload(function(streams:haxe.ds.ReadOnlyArray<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>, ?options:node.stream.PipelineOptions):js.lib.Promise<ts.Undefined> { })
			@:overload(function(stream1:global.nodejs.ReadableStream, stream2:ts.AnyOf2<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:haxe.extern.Rest<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadWriteStream, node.stream.PipelineOptions>>):js.lib.Promise<ts.Undefined> { })
			function pipeline<A, B>(source:A, destination:B, ?options:node.stream.PipelineOptions):node.stream.PipelinePromise<B>;
		};
		final consumers : {
			function buffer(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<node.buffer.Buffer>;
			function text(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<String>;
			function arrayBuffer(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<js.lib.ArrayBuffer>;
			function blob(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<js.html.Blob>;
			function json(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<Any>;
		};
		/**
			Creates a `Promise` that is fulfilled when the `EventEmitter` emits the given
			event or that is rejected if the `EventEmitter` emits `'error'` while waiting.
			The `Promise` will resolve with an array of all the arguments emitted to the
			given event.
			
			This method is intentionally generic and works with the web platform [EventTarget](https://dom.spec.whatwg.org/#interface-eventtarget) interface, which has no special`'error'` event
			semantics and does not listen to the `'error'` event.
			
			```js
			const { once, EventEmitter } = require('events');
			
			async function run() {
			   const ee = new EventEmitter();
			
			   process.nextTick(() => {
			     ee.emit('myevent', 42);
			   });
			
			   const [value] = await once(ee, 'myevent');
			   console.log(value);
			
			   const err = new Error('kaboom');
			   process.nextTick(() => {
			     ee.emit('error', err);
			   });
			
			   try {
			     await once(ee, 'myevent');
			   } catch (err) {
			     console.log('error happened', err);
			   }
			}
			
			run();
			```
			
			The special handling of the `'error'` event is only used when `events.once()`is used to wait for another event. If `events.once()` is used to wait for the
			'`error'` event itself, then it is treated as any other kind of event without
			special handling:
			
			```js
			const { EventEmitter, once } = require('events');
			
			const ee = new EventEmitter();
			
			once(ee, 'error')
			   .then(([err]) => console.log('ok', err.message))
			   .catch((err) => console.log('error', err.message));
			
			ee.emit('error', new Error('boom'));
			
			// Prints: ok boom
			```
			
			An `AbortSignal` can be used to cancel waiting for the event:
			
			```js
			const { EventEmitter, once } = require('events');
			
			const ee = new EventEmitter();
			const ac = new AbortController();
			
			async function foo(emitter, event, signal) {
			   try {
			     await once(emitter, event, { signal });
			     console.log('event emitted!');
			   } catch (error) {
			     if (error.name === 'AbortError') {
			       console.error('Waiting for the event was canceled!');
			     } else {
			       console.error('There was an error', error.message);
			     }
			   }
			}
			
			foo(ee, 'foo', ac.signal);
			ac.abort(); // Abort waiting for the event
			ee.emit('foo'); // Prints: Waiting for the event was canceled!
			```
		**/
		@:overload(function(emitter:SecureServerSessionOptions, eventName:String, ?options:SecureServerSessionOptions):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:SecureServerSessionOptions, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:SecureServerSessionOptions):js.lib.Promise<Array<Dynamic>>;
		/**
			```js
			const { on, EventEmitter } = require('events');
			
			(async () => {
			   const ee = new EventEmitter();
			
			   // Emit later on
			   process.nextTick(() => {
			     ee.emit('foo', 'bar');
			     ee.emit('foo', 42);
			   });
			
			   for await (const event of on(ee, 'foo')) {
			     // The execution of this inner block is synchronous and it
			     // processes one event at a time (even with await). Do not use
			     // if concurrent execution is required.
			     console.log(event); // prints ['bar'] [42]
			   }
			   // Unreachable here
			})();
			```
			
			Returns an `AsyncIterator` that iterates `eventName` events. It will throw
			if the `EventEmitter` emits `'error'`. It removes all listeners when
			exiting the loop. The `value` returned by each iteration is an array
			composed of the emitted event arguments.
			
			An `AbortSignal` can be used to cancel waiting on events:
			
			```js
			const { on, EventEmitter } = require('events');
			const ac = new AbortController();
			
			(async () => {
			   const ee = new EventEmitter();
			
			   // Emit later on
			   process.nextTick(() => {
			     ee.emit('foo', 'bar');
			     ee.emit('foo', 42);
			   });
			
			   for await (const event of on(ee, 'foo', { signal: ac.signal })) {
			     // The execution of this inner block is synchronous and it
			     // processes one event at a time (even with await). Do not use
			     // if concurrent execution is required.
			     console.log(event); // prints ['bar'] [42]
			   }
			   // Unreachable here
			})();
			
			process.nextTick(() => ac.abort());
			```
		**/
		function on(emitter:global.nodejs.EventEmitter, eventName:String, ?options:SecureServerSessionOptions):js.lib.AsyncIterableIterator<Dynamic>;
		/**
			A class method that returns the number of listeners for the given `eventName`registered on the given `emitter`.
			
			```js
			const { EventEmitter, listenerCount } = require('events');
			const myEmitter = new EventEmitter();
			myEmitter.on('event', () => {});
			myEmitter.on('event', () => {});
			console.log(listenerCount(myEmitter, 'event'));
			// Prints: 2
			```
		**/
		function listenerCount(emitter:global.nodejs.EventEmitter, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
		/**
			Returns a copy of the array of listeners for the event named `eventName`.
			
			For `EventEmitter`s this behaves exactly the same as calling `.listeners` on
			the emitter.
			
			For `EventTarget`s this is the only way to get the event listeners for the
			event target. This is useful for debugging and diagnostic purposes.
			
			```js
			const { getEventListeners, EventEmitter } = require('events');
			
			{
			   const ee = new EventEmitter();
			   const listener = () => console.log('Events are fun');
			   ee.on('foo', listener);
			   getEventListeners(ee, 'foo'); // [listener]
			}
			{
			   const et = new EventTarget();
			   const listener = () => console.log('Events are fun');
			   et.addEventListener('foo', listener);
			   getEventListeners(et, 'foo'); // [listener]
			}
			```
		**/
		function getEventListeners(emitter:ts.AnyOf2<global.nodejs.EventEmitter, SecureServerSessionOptions>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
		/**
			This symbol shall be used to install a listener for only monitoring `'error'`
			events. Listeners installed using this symbol are called before the regular
			`'error'` listeners are called.
			
			Installing a listener using this symbol does not change the behavior once an
			`'error'` event is emitted, therefore the process will still crash if no
			regular `'error'` listener is installed.
		**/
		final errorMonitor : js.lib.Symbol;
		final captureRejectionSymbol : js.lib.Symbol;
		/**
			Sets or gets the default captureRejection value for all emitters.
		**/
		var captureRejections : Bool;
		var defaultMaxListeners : Float;
	};
	@:optional
	var maxDeflateDynamicTableSize : Float;
	@:optional
	var maxSessionMemory : Float;
	@:optional
	var maxHeaderListPairs : Float;
	@:optional
	var maxOutstandingPings : Float;
	@:optional
	var maxSendHeaderBlockLength : Float;
	@:optional
	var paddingStrategy : Float;
	@:optional
	var peerMaxConcurrentStreams : Float;
	@:optional
	var settings : Settings;
	/**
		Specifies a timeout in milliseconds that
		a server should wait when an [`'unknownProtocol'`][] is emitted. If the
		socket has not been destroyed by that time the server will destroy it.
	**/
	@:optional
	var unknownProtocolTimeout : Float;
	@:optional
	function selectPadding(frameLen:Float, maxFrameLen:Float):Float;
	@:optional
	function createConnection(authority:node.url.URL, option:SessionOptions):node.stream.Duplex;
	/**
		Abort the connection if the SSL/TLS handshake does not finish in the
		specified number of milliseconds. A 'tlsClientError' is emitted on
		the tls.Server object whenever a handshake times out. Default:
		120000 (120 seconds).
	**/
	@:optional
	var handshakeTimeout : Float;
	/**
		The number of seconds after which a TLS session created by the
		server will no longer be resumable. See Session Resumption for more
		information. Default: 300.
	**/
	@:optional
	var sessionTimeout : Float;
	/**
		48-bytes of cryptographically strong pseudo-random data.
	**/
	@:optional
	var ticketKeys : node.buffer.Buffer;
	@:optional
	function pskCallback(socket:node.tls.TLSSocket, identity:String):Null<global.nodejs.ArrayBufferView>;
	/**
		hint to send to a client to help
		with selecting the identity during TLS-PSK negotiation. Will be ignored
		in TLS 1.3. Upon failing to set pskIdentityHint `tlsClientError` will be
		emitted with `ERR_TLS_PSK_SET_IDENTIY_HINT_FAILED` code.
	**/
	@:optional
	var pskIdentityHint : String;
	/**
		Optionally override the trusted CA certificates. Default is to trust
		the well-known CAs curated by Mozilla. Mozilla's CAs are completely
		replaced when CAs are explicitly specified using this option.
	**/
	@:optional
	var ca : ts.AnyOf3<String, node.buffer.Buffer, Array<ts.AnyOf2<String, node.buffer.Buffer>>>;
	/**
		Cert chains in PEM format. One cert chain should be provided per
		private key. Each cert chain should consist of the PEM formatted
		certificate for a provided private key, followed by the PEM
		formatted intermediate certificates (if any), in order, and not
		including the root CA (the root CA must be pre-known to the peer,
		see ca). When providing multiple cert chains, they do not have to
		be in the same order as their private keys in key. If the
		intermediate certificates are not provided, the peer will not be
		able to validate the certificate, and the handshake will fail.
	**/
	@:optional
	var cert : ts.AnyOf3<String, node.buffer.Buffer, Array<ts.AnyOf2<String, node.buffer.Buffer>>>;
	/**
		Colon-separated list of supported signature algorithms. The list
		can contain digest algorithms (SHA256, MD5 etc.), public key
		algorithms (RSA-PSS, ECDSA etc.), combination of both (e.g
		'RSA+SHA384') or TLS v1.3 scheme names (e.g. rsa_pss_pss_sha512).
	**/
	@:optional
	var sigalgs : String;
	/**
		Cipher suite specification, replacing the default. For more
		information, see modifying the default cipher suite. Permitted
		ciphers can be obtained via tls.getCiphers(). Cipher names must be
		uppercased in order for OpenSSL to accept them.
	**/
	@:optional
	var ciphers : String;
	/**
		Name of an OpenSSL engine which can provide the client certificate.
	**/
	@:optional
	var clientCertEngine : String;
	/**
		PEM formatted CRLs (Certificate Revocation Lists).
	**/
	@:optional
	var crl : ts.AnyOf3<String, node.buffer.Buffer, Array<ts.AnyOf2<String, node.buffer.Buffer>>>;
	/**
		Diffie Hellman parameters, required for Perfect Forward Secrecy. Use
		openssl dhparam to create the parameters. The key length must be
		greater than or equal to 1024 bits or else an error will be thrown.
		Although 1024 bits is permissible, use 2048 bits or larger for
		stronger security. If omitted or invalid, the parameters are
		silently discarded and DHE ciphers will not be available.
	**/
	@:optional
	var dhparam : ts.AnyOf2<String, node.buffer.Buffer>;
	/**
		A string describing a named curve or a colon separated list of curve
		NIDs or names, for example P-521:P-384:P-256, to use for ECDH key
		agreement. Set to auto to select the curve automatically. Use
		crypto.getCurves() to obtain a list of available curve names. On
		recent releases, openssl ecparam -list_curves will also display the
		name and description of each available elliptic curve. Default:
		tls.DEFAULT_ECDH_CURVE.
	**/
	@:optional
	var ecdhCurve : String;
	/**
		Attempt to use the server's cipher suite preferences instead of the
		client's. When true, causes SSL_OP_CIPHER_SERVER_PREFERENCE to be
		set in secureOptions
	**/
	@:optional
	var honorCipherOrder : Bool;
	/**
		Private keys in PEM format. PEM allows the option of private keys
		being encrypted. Encrypted keys will be decrypted with
		options.passphrase. Multiple keys using different algorithms can be
		provided either as an array of unencrypted key strings or buffers,
		or an array of objects in the form {pem: <string|buffer>[,
		passphrase: <string>]}. The object form can only occur in an array.
		object.passphrase is optional. Encrypted keys will be decrypted with
		object.passphrase if provided, or options.passphrase if it is not.
	**/
	@:optional
	var key : ts.AnyOf3<String, node.buffer.Buffer, Array<ts.AnyOf2<node.buffer.Buffer, node.tls.KeyObject>>>;
	/**
		Name of an OpenSSL engine to get private key from. Should be used
		together with privateKeyIdentifier.
	**/
	@:optional
	var privateKeyEngine : String;
	/**
		Identifier of a private key managed by an OpenSSL engine. Should be
		used together with privateKeyEngine. Should not be set together with
		key, because both options define a private key in different ways.
	**/
	@:optional
	var privateKeyIdentifier : String;
	/**
		Optionally set the maximum TLS version to allow. One
		of `'TLSv1.3'`, `'TLSv1.2'`, `'TLSv1.1'`, or `'TLSv1'`. Cannot be specified along with the
		`secureProtocol` option, use one or the other.
		**Default:** `'TLSv1.3'`, unless changed using CLI options. Using
		`--tls-max-v1.2` sets the default to `'TLSv1.2'`. Using `--tls-max-v1.3` sets the default to
		`'TLSv1.3'`. If multiple of the options are provided, the highest maximum is used.
	**/
	@:optional
	var maxVersion : node.tls.SecureVersion;
	/**
		Optionally set the minimum TLS version to allow. One
		of `'TLSv1.3'`, `'TLSv1.2'`, `'TLSv1.1'`, or `'TLSv1'`. Cannot be specified along with the
		`secureProtocol` option, use one or the other.  It is not recommended to use
		less than TLSv1.2, but it may be required for interoperability.
		**Default:** `'TLSv1.2'`, unless changed using CLI options. Using
		`--tls-v1.0` sets the default to `'TLSv1'`. Using `--tls-v1.1` sets the default to
		`'TLSv1.1'`. Using `--tls-min-v1.3` sets the default to
		'TLSv1.3'. If multiple of the options are provided, the lowest minimum is used.
	**/
	@:optional
	var minVersion : node.tls.SecureVersion;
	/**
		Shared passphrase used for a single private key and/or a PFX.
	**/
	@:optional
	var passphrase : String;
	/**
		PFX or PKCS12 encoded private key and certificate chain. pfx is an
		alternative to providing key and cert individually. PFX is usually
		encrypted, if it is, passphrase will be used to decrypt it. Multiple
		PFX can be provided either as an array of unencrypted PFX buffers,
		or an array of objects in the form {buf: <string|buffer>[,
		passphrase: <string>]}. The object form can only occur in an array.
		object.passphrase is optional. Encrypted PFX will be decrypted with
		object.passphrase if provided, or options.passphrase if it is not.
	**/
	@:optional
	var pfx : ts.AnyOf3<String, node.buffer.Buffer, Array<ts.AnyOf3<String, node.buffer.Buffer, node.tls.PxfObject>>>;
	/**
		Optionally affect the OpenSSL protocol behavior, which is not
		usually necessary. This should be used carefully if at all! Value is
		a numeric bitmask of the SSL_OP_* options from OpenSSL Options
	**/
	@:optional
	var secureOptions : Float;
	/**
		Legacy mechanism to select the TLS protocol version to use, it does
		not support independent control of the minimum and maximum version,
		and does not support limiting the protocol to TLSv1.3. Use
		minVersion and maxVersion instead. The possible values are listed as
		SSL_METHODS, use the function names as strings. For example, use
		'TLSv1_1_method' to force TLS version 1.1, or 'TLS_method' to allow
		any TLS protocol version up to TLSv1.3. It is not recommended to use
		TLS versions less than 1.2, but it may be required for
		interoperability. Default: none, see minVersion.
	**/
	@:optional
	var secureProtocol : String;
	/**
		Opaque identifier used by servers to ensure session state is not
		shared between applications. Unused by clients.
	**/
	@:optional
	var sessionIdContext : String;
	/**
		An optional TLS context object from tls.createSecureContext()
	**/
	@:optional
	var secureContext : node.tls.SecureContext;
	/**
		When enabled, TLS packet trace information is written to `stderr`. This can be
		used to debug TLS connection problems.
	**/
	@:optional
	var enableTrace : Bool;
	/**
		If true the server will request a certificate from clients that
		connect and attempt to verify that certificate. Defaults to
		false.
	**/
	@:optional
	var requestCert : Bool;
	/**
		An array of strings or a Buffer naming possible ALPN protocols.
		(Protocols should be ordered by their priority.)
	**/
	@:optional
	var ALPNProtocols : ts.AnyOf3<Array<String>, js.lib.Uint8Array, Array<js.lib.Uint8Array>>;
	/**
		SNICallback(servername, cb) <Function> A function that will be
		called if the client supports SNI TLS extension. Two arguments
		will be passed when called: servername and cb. SNICallback should
		invoke cb(null, ctx), where ctx is a SecureContext instance.
		(tls.createSecureContext(...) can be used to get a proper
		SecureContext.) If SNICallback wasn't provided the default callback
		with high-level API will be used (see below).
	**/
	@:optional
	dynamic function SNICallback(servername:String, cb:ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, ctx:node.tls.SecureContext) -> Void>):Void;
	/**
		If true the server will reject any connection which is not
		authorized with the list of supplied CAs. This option only has an
		effect if requestCert is true.
	**/
	@:optional
	var rejectUnauthorized : Bool;
	/**
		Indicates whether half-opened TCP connections are allowed.
	**/
	@:optional
	var allowHalfOpen : Bool;
	/**
		Indicates whether the socket should be paused on incoming connections.
	**/
	@:optional
	var pauseOnConnect : Bool;
};