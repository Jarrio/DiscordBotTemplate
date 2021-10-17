package js.html;

@:native("") extern class Global {
	/**
		The `console` module provides a simple debugging console that is similar to the
		JavaScript console mechanism provided by web browsers.
		
		The module exports two specific components:
		
		* A `Console` class with methods such as `console.log()`, `console.error()` and`console.warn()` that can be used to write to any Node.js stream.
		* A global `console` instance configured to write to `process.stdout` and `process.stderr`. The global `console` can be used without calling`require('console')`.
		
		_**Warning**_: The global console object's methods are neither consistently
		synchronous like the browser APIs they resemble, nor are they consistently
		asynchronous like all other Node.js streams. See the `note on process I/O` for
		more information.
		
		Example using the global `console`:
		
		```js
		console.log('hello world');
		// Prints: hello world, to stdout
		console.log('hello %s', 'world');
		// Prints: hello world, to stdout
		console.error(new Error('Whoops, something bad happened'));
		// Prints error message and stack trace to stderr:
		//   Error: Whoops, something bad happened
		//     at [eval]:5:15
		//     at Script.runInThisContext (node:vm:132:18)
		//     at Object.runInThisContext (node:vm:309:38)
		//     at node:internal/process/execution:77:19
		//     at [eval]-wrapper:6:22
		//     at evalScript (node:internal/process/execution:76:60)
		//     at node:internal/main/eval_string:23:3
		
		const name = 'Will Robinson';
		console.warn(`Danger ${name}! Danger!`);
		// Prints: Danger Will Robinson! Danger!, to stderr
		```
		
		Example using the `Console` class:
		
		```js
		const out = getStreamSomehow();
		const err = getStreamSomehow();
		const myConsole = new console.Console(out, err);
		
		myConsole.log('hello world');
		// Prints: hello world, to out
		myConsole.log('hello %s', 'world');
		// Prints: hello world, to out
		myConsole.error(new Error('Whoops, something bad happened'));
		// Prints: [Error: Whoops, something bad happened], to err
		
		const name = 'Will Robinson';
		myConsole.warn(`Danger ${name}! Danger!`);
		// Prints: Danger Will Robinson! Danger!, to err
		```
	**/
	static var console : js.html.Console;
	/**
		Decodes a string of Base64-encoded data into bytes, and encodes those bytes
		into a string using Latin-1 (ISO-8859-1).
		
		The `data` may be any JavaScript-value that can be coerced into a string.
		
		**This function is only provided for compatibility with legacy web platform APIs**
		**and should never be used in new code, because they use strings to represent**
		**binary data and predate the introduction of typed arrays in JavaScript.**
		**For code running using Node.js APIs, converting between base64-encoded strings**
		**and binary data should be performed using `Buffer.from(str, 'base64')` and`buf.toString('base64')`.**
	**/
	@:overload(function(data:String):String { })
	@:overload(function(data:String):String { })
	static function atob(encodedString:String):String;
	/**
		Decodes a string into bytes using Latin-1 (ISO-8859), and encodes those bytes
		into a string using Base64.
		
		The `data` may be any JavaScript-value that can be coerced into a string.
		
		**This function is only provided for compatibility with legacy web platform APIs**
		**and should never be used in new code, because they use strings to represent**
		**binary data and predate the introduction of typed arrays in JavaScript.**
		**For code running using Node.js APIs, converting between base64-encoded strings**
		**and binary data should be performed using `Buffer.from(str, 'base64')` and`buf.toString('base64')`.**
	**/
	@:overload(function(data:String):String { })
	@:overload(function(data:String):String { })
	static function btoa(rawString:String):String;
	@:overload(function<TArgs>(callback:(args:haxe.extern.Rest<Any>) -> Void, ?ms:Float, args:haxe.extern.Rest<Any>):global.nodejs.Timeout { })
	@:overload(function(callback:(args:ts.Undefined) -> Void, ?ms:Float):global.nodejs.Timeout { })
	static function setTimeout(handler:TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
	@:overload(function(timeoutId:global.nodejs.Timeout):Void { })
	static function clearTimeout(?handle:Float):Void;
	@:overload(function<TArgs>(callback:(args:haxe.extern.Rest<Any>) -> Void, ?ms:Float, args:haxe.extern.Rest<Any>):global.nodejs.Timer { })
	@:overload(function(callback:(args:ts.Undefined) -> Void, ?ms:Float):global.nodejs.Timer { })
	static function setInterval(handler:TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
	@:overload(function(intervalId:global.nodejs.Timeout):Void { })
	static function clearInterval(?handle:Float):Void;
	@:overload(function(callback:() -> Void):Void { })
	static function queueMicrotask(callback:haxe.Constraints.Function):Void;
	static var ServiceUIFrameContext : ServiceUIFrameContext;
}