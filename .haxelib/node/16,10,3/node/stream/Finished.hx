package node.stream;

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
@:jsRequire("stream", "finished") @valueModuleOnly extern class Finished {
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
	@:selfCall
	static function call(stream:ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>, options:FinishedOptions, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void;
}