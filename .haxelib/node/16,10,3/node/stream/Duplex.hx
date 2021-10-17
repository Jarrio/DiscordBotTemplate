package node.stream;

/**
	Duplex streams are streams that implement both the `Readable` and `Writable` interfaces.
	
	Examples of `Duplex` streams include:
	
	* `TCP sockets`
	* `zlib streams`
	* `crypto streams`
**/
@:jsRequire("stream", "Duplex") extern class Duplex extends Readable {
	function new(?opts:DuplexOptions);
	/**
		Is `true` if it is safe to call `writable.write()`, which means
		the stream has not been destroyed, errored or ended.
	**/
	final writable : Bool;
	/**
		Is `true` after `writable.end()` has been called. This property
		does not indicate whether the data has been flushed, for this use `writable.writableFinished` instead.
	**/
	final writableEnded : Bool;
	/**
		Is set to `true` immediately before the `'finish'` event is emitted.
	**/
	final writableFinished : Bool;
	/**
		Return the value of `highWaterMark` passed when creating this `Writable`.
	**/
	final writableHighWaterMark : Float;
	/**
		This property contains the number of bytes (or objects) in the queue
		ready to be written. The value provides introspection data regarding
		the status of the `highWaterMark`.
	**/
	final writableLength : Float;
	/**
		Getter for the property `objectMode` of a given `Writable` stream.
	**/
	final writableObjectMode : Bool;
	/**
		Number of times `writable.uncork()` needs to be
		called in order to fully uncork the stream.
	**/
	final writableCorked : Float;
	/**
		If `false` then the stream will automatically end the writable side when the
		readable side ends. Set initially by the `allowHalfOpen` constructor option,
		which defaults to `false`.
		
		This can be changed manually to change the half-open behavior of an existing`Duplex` stream instance, but must be changed before the `'end'` event is
		emitted.
	**/
	var allowHalfOpen : Bool;
	function _write(chunk:Dynamic, encoding:global.BufferEncoding, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	function _writev(chunks:Array<{ var chunk : Dynamic; var encoding : global.BufferEncoding; }>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	function _destroy(error:Null<js.lib.Error>, callback:(error:Null<js.lib.Error>) -> Void):Void;
	function _final(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	/**
		The `writable.write()` method writes some data to the stream, and calls the
		supplied `callback` once the data has been fully handled. If an error
		occurs, the `callback` will be called with the error as its
		first argument. The `callback` is called asynchronously and before `'error'` is
		emitted.
		
		The return value is `true` if the internal buffer is less than the`highWaterMark` configured when the stream was created after admitting `chunk`.
		If `false` is returned, further attempts to write data to the stream should
		stop until the `'drain'` event is emitted.
		
		While a stream is not draining, calls to `write()` will buffer `chunk`, and
		return false. Once all currently buffered chunks are drained (accepted for
		delivery by the operating system), the `'drain'` event will be emitted.
		It is recommended that once `write()` returns false, no more chunks be written
		until the `'drain'` event is emitted. While calling `write()` on a stream that
		is not draining is allowed, Node.js will buffer all written chunks until
		maximum memory usage occurs, at which point it will abort unconditionally.
		Even before it aborts, high memory usage will cause poor garbage collector
		performance and high RSS (which is not typically released back to the system,
		even after the memory is no longer required). Since TCP sockets may never
		drain if the remote peer does not read the data, writing a socket that is
		not draining may lead to a remotely exploitable vulnerability.
		
		Writing data while the stream is not draining is particularly
		problematic for a `Transform`, because the `Transform` streams are paused
		by default until they are piped or a `'data'` or `'readable'` event handler
		is added.
		
		If the data to be written can be generated or fetched on demand, it is
		recommended to encapsulate the logic into a `Readable` and use {@link pipe}. However, if calling `write()` is preferred, it is
		possible to respect backpressure and avoid memory issues using the `'drain'` event:
		
		```js
		function write(data, cb) {
		   if (!stream.write(data)) {
		     stream.once('drain', cb);
		   } else {
		     process.nextTick(cb);
		   }
		}
		
		// Wait for cb to be called before doing any other write.
		write('hello', () => {
		   console.log('Write completed, do more writes now.');
		});
		```
		
		A `Writable` stream in object mode will always ignore the `encoding` argument.
		
		The `writable.write()` method writes some data to the stream, and calls the
		supplied `callback` once the data has been fully handled. If an error
		occurs, the `callback` will be called with the error as its
		first argument. The `callback` is called asynchronously and before `'error'` is
		emitted.
		
		The return value is `true` if the internal buffer is less than the`highWaterMark` configured when the stream was created after admitting `chunk`.
		If `false` is returned, further attempts to write data to the stream should
		stop until the `'drain'` event is emitted.
		
		While a stream is not draining, calls to `write()` will buffer `chunk`, and
		return false. Once all currently buffered chunks are drained (accepted for
		delivery by the operating system), the `'drain'` event will be emitted.
		It is recommended that once `write()` returns false, no more chunks be written
		until the `'drain'` event is emitted. While calling `write()` on a stream that
		is not draining is allowed, Node.js will buffer all written chunks until
		maximum memory usage occurs, at which point it will abort unconditionally.
		Even before it aborts, high memory usage will cause poor garbage collector
		performance and high RSS (which is not typically released back to the system,
		even after the memory is no longer required). Since TCP sockets may never
		drain if the remote peer does not read the data, writing a socket that is
		not draining may lead to a remotely exploitable vulnerability.
		
		Writing data while the stream is not draining is particularly
		problematic for a `Transform`, because the `Transform` streams are paused
		by default until they are piped or a `'data'` or `'readable'` event handler
		is added.
		
		If the data to be written can be generated or fetched on demand, it is
		recommended to encapsulate the logic into a `Readable` and use {@link pipe}. However, if calling `write()` is preferred, it is
		possible to respect backpressure and avoid memory issues using the `'drain'` event:
		
		```js
		function write(data, cb) {
		   if (!stream.write(data)) {
		     stream.once('drain', cb);
		   } else {
		     process.nextTick(cb);
		   }
		}
		
		// Wait for cb to be called before doing any other write.
		write('hello', () => {
		   console.log('Write completed, do more writes now.');
		});
		```
		
		A `Writable` stream in object mode will always ignore the `encoding` argument.
	**/
	@:overload(function(chunk:Dynamic, ?cb:(error:Null<js.lib.Error>) -> Void):Bool { })
	function write(chunk:Dynamic, ?encoding:global.BufferEncoding, ?cb:(error:Null<js.lib.Error>) -> Void):Bool;
	/**
		The `writable.setDefaultEncoding()` method sets the default `encoding` for a `Writable` stream.
	**/
	function setDefaultEncoding(encoding:global.BufferEncoding):Duplex;
	/**
		Calling the `writable.end()` method signals that no more data will be written
		to the `Writable`. The optional `chunk` and `encoding` arguments allow one
		final additional chunk of data to be written immediately before closing the
		stream.
		
		Calling the {@link write} method after calling {@link end} will raise an error.
		
		```js
		// Write 'hello, ' and then end with 'world!'.
		const fs = require('fs');
		const file = fs.createWriteStream('example.txt');
		file.write('hello, ');
		file.end('world!');
		// Writing more now is not allowed!
		```
		
		Calling the `writable.end()` method signals that no more data will be written
		to the `Writable`. The optional `chunk` and `encoding` arguments allow one
		final additional chunk of data to be written immediately before closing the
		stream.
		
		Calling the {@link write} method after calling {@link end} will raise an error.
		
		```js
		// Write 'hello, ' and then end with 'world!'.
		const fs = require('fs');
		const file = fs.createWriteStream('example.txt');
		file.write('hello, ');
		file.end('world!');
		// Writing more now is not allowed!
		```
		
		Calling the `writable.end()` method signals that no more data will be written
		to the `Writable`. The optional `chunk` and `encoding` arguments allow one
		final additional chunk of data to be written immediately before closing the
		stream.
		
		Calling the {@link write} method after calling {@link end} will raise an error.
		
		```js
		// Write 'hello, ' and then end with 'world!'.
		const fs = require('fs');
		const file = fs.createWriteStream('example.txt');
		file.write('hello, ');
		file.end('world!');
		// Writing more now is not allowed!
		```
	**/
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Dynamic, ?encoding:global.BufferEncoding, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	/**
		The `writable.cork()` method forces all written data to be buffered in memory.
		The buffered data will be flushed when either the {@link uncork} or {@link end} methods are called.
		
		The primary intent of `writable.cork()` is to accommodate a situation in which
		several small chunks are written to the stream in rapid succession. Instead of
		immediately forwarding them to the underlying destination, `writable.cork()`buffers all the chunks until `writable.uncork()` is called, which will pass them
		all to `writable._writev()`, if present. This prevents a head-of-line blocking
		situation where data is being buffered while waiting for the first small chunk
		to be processed. However, use of `writable.cork()` without implementing`writable._writev()` may have an adverse effect on throughput.
		
		See also: `writable.uncork()`, `writable._writev()`.
	**/
	function cork():Void;
	/**
		The `writable.uncork()` method flushes all data buffered since {@link cork} was called.
		
		When using `writable.cork()` and `writable.uncork()` to manage the buffering
		of writes to a stream, it is recommended that calls to `writable.uncork()` be
		deferred using `process.nextTick()`. Doing so allows batching of all`writable.write()` calls that occur within a given Node.js event loop phase.
		
		```js
		stream.cork();
		stream.write('some ');
		stream.write('data ');
		process.nextTick(() => stream.uncork());
		```
		
		If the `writable.cork()` method is called multiple times on a stream, the
		same number of calls to `writable.uncork()` must be called to flush the buffered
		data.
		
		```js
		stream.cork();
		stream.write('some ');
		stream.cork();
		stream.write('data ');
		process.nextTick(() => {
		   stream.uncork();
		   // The data will not be flushed until uncork() is called a second time.
		   stream.uncork();
		});
		```
		
		See also: `writable.cork()`.
	**/
	function uncork():Void;
	/**
		The `readable.setEncoding()` method sets the character encoding for
		data read from the `Readable` stream.
		
		By default, no encoding is assigned and stream data will be returned as`Buffer` objects. Setting an encoding causes the stream data
		to be returned as strings of the specified encoding rather than as `Buffer`objects. For instance, calling `readable.setEncoding('utf8')` will cause the
		output data to be interpreted as UTF-8 data, and passed as strings. Calling`readable.setEncoding('hex')` will cause the data to be encoded in hexadecimal
		string format.
		
		The `Readable` stream will properly handle multi-byte characters delivered
		through the stream that would otherwise become improperly decoded if simply
		pulled from the stream as `Buffer` objects.
		
		```js
		const readable = getReadableStreamSomehow();
		readable.setEncoding('utf8');
		readable.on('data', (chunk) => {
		   assert.equal(typeof chunk, 'string');
		   console.log('Got %d characters of string data:', chunk.length);
		});
		```
	**/
	function setEncoding(encoding:global.BufferEncoding):Duplex;
	/**
		The `readable.pause()` method will cause a stream in flowing mode to stop
		emitting `'data'` events, switching out of flowing mode. Any data that
		becomes available will remain in the internal buffer.
		
		```js
		const readable = getReadableStreamSomehow();
		readable.on('data', (chunk) => {
		   console.log(`Received ${chunk.length} bytes of data.`);
		   readable.pause();
		   console.log('There will be no additional data for 1 second.');
		   setTimeout(() => {
		     console.log('Now data will start flowing again.');
		     readable.resume();
		   }, 1000);
		});
		```
		
		The `readable.pause()` method has no effect if there is a `'readable'`event listener.
	**/
	function pause():Duplex;
	/**
		The `readable.resume()` method causes an explicitly paused `Readable` stream to
		resume emitting `'data'` events, switching the stream into flowing mode.
		
		The `readable.resume()` method can be used to fully consume the data from a
		stream without actually processing any of that data:
		
		```js
		getReadableStreamSomehow()
		   .resume()
		   .on('end', () => {
		     console.log('Reached the end, but did not read anything.');
		   });
		```
		
		The `readable.resume()` method has no effect if there is a `'readable'`event listener.
	**/
	function resume():Duplex;
	/**
		The `readable.unpipe()` method detaches a `Writable` stream previously attached
		using the {@link pipe} method.
		
		If the `destination` is not specified, then _all_ pipes are detached.
		
		If the `destination` is specified, but no pipe is set up for it, then
		the method does nothing.
		
		```js
		const fs = require('fs');
		const readable = getReadableStreamSomehow();
		const writable = fs.createWriteStream('file.txt');
		// All the data from readable goes into 'file.txt',
		// but only for the first second.
		readable.pipe(writable);
		setTimeout(() => {
		   console.log('Stop writing to file.txt.');
		   readable.unpipe(writable);
		   console.log('Manually close the file stream.');
		   writable.end();
		}, 1000);
		```
	**/
	function unpipe(?destination:global.nodejs.WritableStream):Duplex;
	/**
		Prior to Node.js 0.10, streams did not implement the entire `stream` module API
		as it is currently defined. (See `Compatibility` for more information.)
		
		When using an older Node.js library that emits `'data'` events and has a {@link pause} method that is advisory only, the`readable.wrap()` method can be used to create a `Readable`
		stream that uses
		the old stream as its data source.
		
		It will rarely be necessary to use `readable.wrap()` but the method has been
		provided as a convenience for interacting with older Node.js applications and
		libraries.
		
		```js
		const { OldReader } = require('./old-api-module.js');
		const { Readable } = require('stream');
		const oreader = new OldReader();
		const myReader = new Readable().wrap(oreader);
		
		myReader.on('readable', () => {
		   myReader.read(); // etc.
		});
		```
	**/
	function wrap(stream:global.nodejs.ReadableStream):Duplex;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. error
		5. pause
		6. readable
		7. resume
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Duplex { })
	function addListener(event:String, listener:() -> Void):Duplex;
	/**
		Adds the `listener` function to the end of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.on('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.on('foo', () => console.log('a'));
		myEE.prependListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
		
		Adds the `listener` function to the end of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.on('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.on('foo', () => console.log('a'));
		myEE.prependListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
		
		Adds the `listener` function to the end of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.on('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.on('foo', () => console.log('a'));
		myEE.prependListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
		
		Adds the `listener` function to the end of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.on('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.on('foo', () => console.log('a'));
		myEE.prependListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
		
		Adds the `listener` function to the end of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.on('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.on('foo', () => console.log('a'));
		myEE.prependListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
		
		Adds the `listener` function to the end of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.on('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.on('foo', () => console.log('a'));
		myEE.prependListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
		
		Adds the `listener` function to the end of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.on('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.on('foo', () => console.log('a'));
		myEE.prependListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
		
		Adds the `listener` function to the end of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.on('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.on('foo', () => console.log('a'));
		myEE.prependListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Duplex { })
	function on(event:String, listener:() -> Void):Duplex;
	/**
		Adds a **one-time**`listener` function for the event named `eventName`. The
		next time `eventName` is triggered, this listener is removed and then invoked.
		
		```js
		server.once('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependOnceListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.once('foo', () => console.log('a'));
		myEE.prependOnceListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
		
		Adds a **one-time**`listener` function for the event named `eventName`. The
		next time `eventName` is triggered, this listener is removed and then invoked.
		
		```js
		server.once('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependOnceListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.once('foo', () => console.log('a'));
		myEE.prependOnceListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
		
		Adds a **one-time**`listener` function for the event named `eventName`. The
		next time `eventName` is triggered, this listener is removed and then invoked.
		
		```js
		server.once('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependOnceListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.once('foo', () => console.log('a'));
		myEE.prependOnceListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
		
		Adds a **one-time**`listener` function for the event named `eventName`. The
		next time `eventName` is triggered, this listener is removed and then invoked.
		
		```js
		server.once('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependOnceListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.once('foo', () => console.log('a'));
		myEE.prependOnceListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
		
		Adds a **one-time**`listener` function for the event named `eventName`. The
		next time `eventName` is triggered, this listener is removed and then invoked.
		
		```js
		server.once('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependOnceListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.once('foo', () => console.log('a'));
		myEE.prependOnceListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
		
		Adds a **one-time**`listener` function for the event named `eventName`. The
		next time `eventName` is triggered, this listener is removed and then invoked.
		
		```js
		server.once('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependOnceListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.once('foo', () => console.log('a'));
		myEE.prependOnceListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
		
		Adds a **one-time**`listener` function for the event named `eventName`. The
		next time `eventName` is triggered, this listener is removed and then invoked.
		
		```js
		server.once('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependOnceListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.once('foo', () => console.log('a'));
		myEE.prependOnceListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
		
		Adds a **one-time**`listener` function for the event named `eventName`. The
		next time `eventName` is triggered, this listener is removed and then invoked.
		
		```js
		server.once('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependOnceListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.once('foo', () => console.log('a'));
		myEE.prependOnceListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Duplex { })
	function once(event:String, listener:() -> Void):Duplex;
	/**
		Adds the `listener` function to the _beginning_ of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.prependListener('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Adds the `listener` function to the _beginning_ of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.prependListener('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Adds the `listener` function to the _beginning_ of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.prependListener('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Adds the `listener` function to the _beginning_ of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.prependListener('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Adds the `listener` function to the _beginning_ of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.prependListener('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Adds the `listener` function to the _beginning_ of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.prependListener('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Adds the `listener` function to the _beginning_ of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.prependListener('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Adds the `listener` function to the _beginning_ of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.prependListener('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Duplex { })
	function prependListener(event:String, listener:() -> Void):Duplex;
	/**
		Adds a **one-time**`listener` function for the event named `eventName` to the_beginning_ of the listeners array. The next time `eventName` is triggered, this
		listener is removed, and then invoked.
		
		```js
		server.prependOnceListener('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Adds a **one-time**`listener` function for the event named `eventName` to the_beginning_ of the listeners array. The next time `eventName` is triggered, this
		listener is removed, and then invoked.
		
		```js
		server.prependOnceListener('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Adds a **one-time**`listener` function for the event named `eventName` to the_beginning_ of the listeners array. The next time `eventName` is triggered, this
		listener is removed, and then invoked.
		
		```js
		server.prependOnceListener('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Adds a **one-time**`listener` function for the event named `eventName` to the_beginning_ of the listeners array. The next time `eventName` is triggered, this
		listener is removed, and then invoked.
		
		```js
		server.prependOnceListener('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Adds a **one-time**`listener` function for the event named `eventName` to the_beginning_ of the listeners array. The next time `eventName` is triggered, this
		listener is removed, and then invoked.
		
		```js
		server.prependOnceListener('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Adds a **one-time**`listener` function for the event named `eventName` to the_beginning_ of the listeners array. The next time `eventName` is triggered, this
		listener is removed, and then invoked.
		
		```js
		server.prependOnceListener('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Adds a **one-time**`listener` function for the event named `eventName` to the_beginning_ of the listeners array. The next time `eventName` is triggered, this
		listener is removed, and then invoked.
		
		```js
		server.prependOnceListener('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Adds a **one-time**`listener` function for the event named `eventName` to the_beginning_ of the listeners array. The next time `eventName` is triggered, this
		listener is removed, and then invoked.
		
		```js
		server.prependOnceListener('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Duplex { })
	function prependOnceListener(event:String, listener:() -> Void):Duplex;
	/**
		Removes the specified `listener` from the listener array for the event named`eventName`.
		
		```js
		const callback = (stream) => {
		   console.log('someone connected!');
		};
		server.on('connection', callback);
		// ...
		server.removeListener('connection', callback);
		```
		
		`removeListener()` will remove, at most, one instance of a listener from the
		listener array. If any single listener has been added multiple times to the
		listener array for the specified `eventName`, then `removeListener()` must be
		called multiple times to remove each instance.
		
		Once an event is emitted, all listeners attached to it at the
		time of emitting are called in order. This implies that any`removeListener()` or `removeAllListeners()` calls _after_ emitting and_before_ the last listener finishes execution will
		not remove them from`emit()` in progress. Subsequent events behave as expected.
		
		```js
		const myEmitter = new MyEmitter();
		
		const callbackA = () => {
		   console.log('A');
		   myEmitter.removeListener('event', callbackB);
		};
		
		const callbackB = () => {
		   console.log('B');
		};
		
		myEmitter.on('event', callbackA);
		
		myEmitter.on('event', callbackB);
		
		// callbackA removes listener callbackB but it will still be called.
		// Internal listener array at time of emit [callbackA, callbackB]
		myEmitter.emit('event');
		// Prints:
		//   A
		//   B
		
		// callbackB is now removed.
		// Internal listener array [callbackA]
		myEmitter.emit('event');
		// Prints:
		//   A
		```
		
		Because listeners are managed using an internal array, calling this will
		change the position indices of any listener registered _after_ the listener
		being removed. This will not impact the order in which listeners are called,
		but it means that any copies of the listener array as returned by
		the `emitter.listeners()` method will need to be recreated.
		
		When a single function has been added as a handler multiple times for a single
		event (as in the example below), `removeListener()` will remove the most
		recently added instance. In the example the `once('ping')`listener is removed:
		
		```js
		const ee = new EventEmitter();
		
		function pong() {
		   console.log('pong');
		}
		
		ee.on('ping', pong);
		ee.once('ping', pong);
		ee.removeListener('ping', pong);
		
		ee.emit('ping');
		ee.emit('ping');
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Removes the specified `listener` from the listener array for the event named`eventName`.
		
		```js
		const callback = (stream) => {
		   console.log('someone connected!');
		};
		server.on('connection', callback);
		// ...
		server.removeListener('connection', callback);
		```
		
		`removeListener()` will remove, at most, one instance of a listener from the
		listener array. If any single listener has been added multiple times to the
		listener array for the specified `eventName`, then `removeListener()` must be
		called multiple times to remove each instance.
		
		Once an event is emitted, all listeners attached to it at the
		time of emitting are called in order. This implies that any`removeListener()` or `removeAllListeners()` calls _after_ emitting and_before_ the last listener finishes execution will
		not remove them from`emit()` in progress. Subsequent events behave as expected.
		
		```js
		const myEmitter = new MyEmitter();
		
		const callbackA = () => {
		   console.log('A');
		   myEmitter.removeListener('event', callbackB);
		};
		
		const callbackB = () => {
		   console.log('B');
		};
		
		myEmitter.on('event', callbackA);
		
		myEmitter.on('event', callbackB);
		
		// callbackA removes listener callbackB but it will still be called.
		// Internal listener array at time of emit [callbackA, callbackB]
		myEmitter.emit('event');
		// Prints:
		//   A
		//   B
		
		// callbackB is now removed.
		// Internal listener array [callbackA]
		myEmitter.emit('event');
		// Prints:
		//   A
		```
		
		Because listeners are managed using an internal array, calling this will
		change the position indices of any listener registered _after_ the listener
		being removed. This will not impact the order in which listeners are called,
		but it means that any copies of the listener array as returned by
		the `emitter.listeners()` method will need to be recreated.
		
		When a single function has been added as a handler multiple times for a single
		event (as in the example below), `removeListener()` will remove the most
		recently added instance. In the example the `once('ping')`listener is removed:
		
		```js
		const ee = new EventEmitter();
		
		function pong() {
		   console.log('pong');
		}
		
		ee.on('ping', pong);
		ee.once('ping', pong);
		ee.removeListener('ping', pong);
		
		ee.emit('ping');
		ee.emit('ping');
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Removes the specified `listener` from the listener array for the event named`eventName`.
		
		```js
		const callback = (stream) => {
		   console.log('someone connected!');
		};
		server.on('connection', callback);
		// ...
		server.removeListener('connection', callback);
		```
		
		`removeListener()` will remove, at most, one instance of a listener from the
		listener array. If any single listener has been added multiple times to the
		listener array for the specified `eventName`, then `removeListener()` must be
		called multiple times to remove each instance.
		
		Once an event is emitted, all listeners attached to it at the
		time of emitting are called in order. This implies that any`removeListener()` or `removeAllListeners()` calls _after_ emitting and_before_ the last listener finishes execution will
		not remove them from`emit()` in progress. Subsequent events behave as expected.
		
		```js
		const myEmitter = new MyEmitter();
		
		const callbackA = () => {
		   console.log('A');
		   myEmitter.removeListener('event', callbackB);
		};
		
		const callbackB = () => {
		   console.log('B');
		};
		
		myEmitter.on('event', callbackA);
		
		myEmitter.on('event', callbackB);
		
		// callbackA removes listener callbackB but it will still be called.
		// Internal listener array at time of emit [callbackA, callbackB]
		myEmitter.emit('event');
		// Prints:
		//   A
		//   B
		
		// callbackB is now removed.
		// Internal listener array [callbackA]
		myEmitter.emit('event');
		// Prints:
		//   A
		```
		
		Because listeners are managed using an internal array, calling this will
		change the position indices of any listener registered _after_ the listener
		being removed. This will not impact the order in which listeners are called,
		but it means that any copies of the listener array as returned by
		the `emitter.listeners()` method will need to be recreated.
		
		When a single function has been added as a handler multiple times for a single
		event (as in the example below), `removeListener()` will remove the most
		recently added instance. In the example the `once('ping')`listener is removed:
		
		```js
		const ee = new EventEmitter();
		
		function pong() {
		   console.log('pong');
		}
		
		ee.on('ping', pong);
		ee.once('ping', pong);
		ee.removeListener('ping', pong);
		
		ee.emit('ping');
		ee.emit('ping');
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Removes the specified `listener` from the listener array for the event named`eventName`.
		
		```js
		const callback = (stream) => {
		   console.log('someone connected!');
		};
		server.on('connection', callback);
		// ...
		server.removeListener('connection', callback);
		```
		
		`removeListener()` will remove, at most, one instance of a listener from the
		listener array. If any single listener has been added multiple times to the
		listener array for the specified `eventName`, then `removeListener()` must be
		called multiple times to remove each instance.
		
		Once an event is emitted, all listeners attached to it at the
		time of emitting are called in order. This implies that any`removeListener()` or `removeAllListeners()` calls _after_ emitting and_before_ the last listener finishes execution will
		not remove them from`emit()` in progress. Subsequent events behave as expected.
		
		```js
		const myEmitter = new MyEmitter();
		
		const callbackA = () => {
		   console.log('A');
		   myEmitter.removeListener('event', callbackB);
		};
		
		const callbackB = () => {
		   console.log('B');
		};
		
		myEmitter.on('event', callbackA);
		
		myEmitter.on('event', callbackB);
		
		// callbackA removes listener callbackB but it will still be called.
		// Internal listener array at time of emit [callbackA, callbackB]
		myEmitter.emit('event');
		// Prints:
		//   A
		//   B
		
		// callbackB is now removed.
		// Internal listener array [callbackA]
		myEmitter.emit('event');
		// Prints:
		//   A
		```
		
		Because listeners are managed using an internal array, calling this will
		change the position indices of any listener registered _after_ the listener
		being removed. This will not impact the order in which listeners are called,
		but it means that any copies of the listener array as returned by
		the `emitter.listeners()` method will need to be recreated.
		
		When a single function has been added as a handler multiple times for a single
		event (as in the example below), `removeListener()` will remove the most
		recently added instance. In the example the `once('ping')`listener is removed:
		
		```js
		const ee = new EventEmitter();
		
		function pong() {
		   console.log('pong');
		}
		
		ee.on('ping', pong);
		ee.once('ping', pong);
		ee.removeListener('ping', pong);
		
		ee.emit('ping');
		ee.emit('ping');
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Removes the specified `listener` from the listener array for the event named`eventName`.
		
		```js
		const callback = (stream) => {
		   console.log('someone connected!');
		};
		server.on('connection', callback);
		// ...
		server.removeListener('connection', callback);
		```
		
		`removeListener()` will remove, at most, one instance of a listener from the
		listener array. If any single listener has been added multiple times to the
		listener array for the specified `eventName`, then `removeListener()` must be
		called multiple times to remove each instance.
		
		Once an event is emitted, all listeners attached to it at the
		time of emitting are called in order. This implies that any`removeListener()` or `removeAllListeners()` calls _after_ emitting and_before_ the last listener finishes execution will
		not remove them from`emit()` in progress. Subsequent events behave as expected.
		
		```js
		const myEmitter = new MyEmitter();
		
		const callbackA = () => {
		   console.log('A');
		   myEmitter.removeListener('event', callbackB);
		};
		
		const callbackB = () => {
		   console.log('B');
		};
		
		myEmitter.on('event', callbackA);
		
		myEmitter.on('event', callbackB);
		
		// callbackA removes listener callbackB but it will still be called.
		// Internal listener array at time of emit [callbackA, callbackB]
		myEmitter.emit('event');
		// Prints:
		//   A
		//   B
		
		// callbackB is now removed.
		// Internal listener array [callbackA]
		myEmitter.emit('event');
		// Prints:
		//   A
		```
		
		Because listeners are managed using an internal array, calling this will
		change the position indices of any listener registered _after_ the listener
		being removed. This will not impact the order in which listeners are called,
		but it means that any copies of the listener array as returned by
		the `emitter.listeners()` method will need to be recreated.
		
		When a single function has been added as a handler multiple times for a single
		event (as in the example below), `removeListener()` will remove the most
		recently added instance. In the example the `once('ping')`listener is removed:
		
		```js
		const ee = new EventEmitter();
		
		function pong() {
		   console.log('pong');
		}
		
		ee.on('ping', pong);
		ee.once('ping', pong);
		ee.removeListener('ping', pong);
		
		ee.emit('ping');
		ee.emit('ping');
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Removes the specified `listener` from the listener array for the event named`eventName`.
		
		```js
		const callback = (stream) => {
		   console.log('someone connected!');
		};
		server.on('connection', callback);
		// ...
		server.removeListener('connection', callback);
		```
		
		`removeListener()` will remove, at most, one instance of a listener from the
		listener array. If any single listener has been added multiple times to the
		listener array for the specified `eventName`, then `removeListener()` must be
		called multiple times to remove each instance.
		
		Once an event is emitted, all listeners attached to it at the
		time of emitting are called in order. This implies that any`removeListener()` or `removeAllListeners()` calls _after_ emitting and_before_ the last listener finishes execution will
		not remove them from`emit()` in progress. Subsequent events behave as expected.
		
		```js
		const myEmitter = new MyEmitter();
		
		const callbackA = () => {
		   console.log('A');
		   myEmitter.removeListener('event', callbackB);
		};
		
		const callbackB = () => {
		   console.log('B');
		};
		
		myEmitter.on('event', callbackA);
		
		myEmitter.on('event', callbackB);
		
		// callbackA removes listener callbackB but it will still be called.
		// Internal listener array at time of emit [callbackA, callbackB]
		myEmitter.emit('event');
		// Prints:
		//   A
		//   B
		
		// callbackB is now removed.
		// Internal listener array [callbackA]
		myEmitter.emit('event');
		// Prints:
		//   A
		```
		
		Because listeners are managed using an internal array, calling this will
		change the position indices of any listener registered _after_ the listener
		being removed. This will not impact the order in which listeners are called,
		but it means that any copies of the listener array as returned by
		the `emitter.listeners()` method will need to be recreated.
		
		When a single function has been added as a handler multiple times for a single
		event (as in the example below), `removeListener()` will remove the most
		recently added instance. In the example the `once('ping')`listener is removed:
		
		```js
		const ee = new EventEmitter();
		
		function pong() {
		   console.log('pong');
		}
		
		ee.on('ping', pong);
		ee.once('ping', pong);
		ee.removeListener('ping', pong);
		
		ee.emit('ping');
		ee.emit('ping');
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Removes the specified `listener` from the listener array for the event named`eventName`.
		
		```js
		const callback = (stream) => {
		   console.log('someone connected!');
		};
		server.on('connection', callback);
		// ...
		server.removeListener('connection', callback);
		```
		
		`removeListener()` will remove, at most, one instance of a listener from the
		listener array. If any single listener has been added multiple times to the
		listener array for the specified `eventName`, then `removeListener()` must be
		called multiple times to remove each instance.
		
		Once an event is emitted, all listeners attached to it at the
		time of emitting are called in order. This implies that any`removeListener()` or `removeAllListeners()` calls _after_ emitting and_before_ the last listener finishes execution will
		not remove them from`emit()` in progress. Subsequent events behave as expected.
		
		```js
		const myEmitter = new MyEmitter();
		
		const callbackA = () => {
		   console.log('A');
		   myEmitter.removeListener('event', callbackB);
		};
		
		const callbackB = () => {
		   console.log('B');
		};
		
		myEmitter.on('event', callbackA);
		
		myEmitter.on('event', callbackB);
		
		// callbackA removes listener callbackB but it will still be called.
		// Internal listener array at time of emit [callbackA, callbackB]
		myEmitter.emit('event');
		// Prints:
		//   A
		//   B
		
		// callbackB is now removed.
		// Internal listener array [callbackA]
		myEmitter.emit('event');
		// Prints:
		//   A
		```
		
		Because listeners are managed using an internal array, calling this will
		change the position indices of any listener registered _after_ the listener
		being removed. This will not impact the order in which listeners are called,
		but it means that any copies of the listener array as returned by
		the `emitter.listeners()` method will need to be recreated.
		
		When a single function has been added as a handler multiple times for a single
		event (as in the example below), `removeListener()` will remove the most
		recently added instance. In the example the `once('ping')`listener is removed:
		
		```js
		const ee = new EventEmitter();
		
		function pong() {
		   console.log('pong');
		}
		
		ee.on('ping', pong);
		ee.once('ping', pong);
		ee.removeListener('ping', pong);
		
		ee.emit('ping');
		ee.emit('ping');
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		Removes the specified `listener` from the listener array for the event named`eventName`.
		
		```js
		const callback = (stream) => {
		   console.log('someone connected!');
		};
		server.on('connection', callback);
		// ...
		server.removeListener('connection', callback);
		```
		
		`removeListener()` will remove, at most, one instance of a listener from the
		listener array. If any single listener has been added multiple times to the
		listener array for the specified `eventName`, then `removeListener()` must be
		called multiple times to remove each instance.
		
		Once an event is emitted, all listeners attached to it at the
		time of emitting are called in order. This implies that any`removeListener()` or `removeAllListeners()` calls _after_ emitting and_before_ the last listener finishes execution will
		not remove them from`emit()` in progress. Subsequent events behave as expected.
		
		```js
		const myEmitter = new MyEmitter();
		
		const callbackA = () => {
		   console.log('A');
		   myEmitter.removeListener('event', callbackB);
		};
		
		const callbackB = () => {
		   console.log('B');
		};
		
		myEmitter.on('event', callbackA);
		
		myEmitter.on('event', callbackB);
		
		// callbackA removes listener callbackB but it will still be called.
		// Internal listener array at time of emit [callbackA, callbackB]
		myEmitter.emit('event');
		// Prints:
		//   A
		//   B
		
		// callbackB is now removed.
		// Internal listener array [callbackA]
		myEmitter.emit('event');
		// Prints:
		//   A
		```
		
		Because listeners are managed using an internal array, calling this will
		change the position indices of any listener registered _after_ the listener
		being removed. This will not impact the order in which listeners are called,
		but it means that any copies of the listener array as returned by
		the `emitter.listeners()` method will need to be recreated.
		
		When a single function has been added as a handler multiple times for a single
		event (as in the example below), `removeListener()` will remove the most
		recently added instance. In the example the `once('ping')`listener is removed:
		
		```js
		const ee = new EventEmitter();
		
		function pong() {
		   console.log('pong');
		}
		
		ee.on('ping', pong);
		ee.once('ping', pong);
		ee.removeListener('ping', pong);
		
		ee.emit('ping');
		ee.emit('ping');
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Duplex { })
	function removeListener(event:String, listener:() -> Void):Duplex;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Duplex;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Duplex;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to`Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Duplex;
	static var prototype : Duplex;
	/**
		A utility method for creating duplex streams.
		
		- `Stream` converts writable stream into writable `Duplex` and readable stream
		   to `Duplex`.
		- `Blob` converts into readable `Duplex`.
		- `string` converts into readable `Duplex`.
		- `ArrayBuffer` converts into readable `Duplex`.
		- `AsyncIterable` converts into a readable `Duplex`. Cannot yield `null`.
		- `AsyncGeneratorFunction` converts into a readable/writable transform
		   `Duplex`. Must take a source `AsyncIterable` as first parameter. Cannot yield
		   `null`.
		- `AsyncFunction` converts into a writable `Duplex`. Must return
		   either `null` or `undefined`
		- `Object ({ writable, readable })` converts `readable` and
		   `writable` into `Stream` and then combines them into `Duplex` where the
		   `Duplex` will write to the `writable` and read from the `readable`.
		- `Promise` converts into readable `Duplex`. Value `null` is ignored.
	**/
	static function from(src:ts.AnyOf9<String, Dynamic, js.lib.ArrayBuffer, Stream, Iterable<Dynamic>, js.lib.AsyncIterable<Dynamic>, js.html.Blob, js.lib.AsyncGeneratorFunction, js.lib.Promise<Dynamic>>):Duplex;
}