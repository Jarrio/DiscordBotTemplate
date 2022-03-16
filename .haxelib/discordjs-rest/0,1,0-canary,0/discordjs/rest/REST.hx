package discordjs.rest;

@:jsRequire("@discordjs/rest", "REST") extern class REST extends node.Events {
	function new(?options:{ /** The base api path, without version **/ @:optional var api : String; /** The cdn path **/ @:optional var cdn : String; /** The extra offset to add to rate limits in milliseconds **/ @:optional var offset : Float; /** The number of retries for errors with the 500 code, or errors
that timeout **/ @:optional var retries : Float; /** The time to wait in milliseconds before a request is aborted **/ @:optional var timeout : Float; /** Extra information to add to the user agent **/ @:optional var userAgentAppendix : String; /** The version of the API to use **/ @:optional var version : String; });
	@:overload(function<S>(event:{ /** Returns a string representation of a string.Returns a string representation of an object. **/ dynamic function toString():String; /** Returns the primitive value of the specified object.Returns the primitive value of the specified object. **/ dynamic function valueOf():ts.AnyOf2<String, js.lib.Symbol>; }, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REST { })
	function on<K>(event:K, listener:(args:haxe.extern.Rest<Any>) -> Void):REST;
	@:overload(function<S>(event:{ /** Returns a string representation of a string.Returns a string representation of an object. **/ dynamic function toString():String; /** Returns the primitive value of the specified object.Returns the primitive value of the specified object. **/ dynamic function valueOf():ts.AnyOf2<String, js.lib.Symbol>; }, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REST { })
	function once<K>(event:K, listener:(args:haxe.extern.Rest<Any>) -> Void):REST;
	@:overload(function<S>(event:{ /** Returns a string representation of a string.Returns a string representation of an object. **/ dynamic function toString():String; /** Returns the primitive value of the specified object.Returns the primitive value of the specified object. **/ dynamic function valueOf():ts.AnyOf2<String, js.lib.Symbol>; }, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit<K>(event:K, args:haxe.extern.Rest<Any>):Bool;
	@:overload(function<S>(event:{ /** Returns a string representation of a string.Returns a string representation of an object. **/ dynamic function toString():String; /** Returns the primitive value of the specified object.Returns the primitive value of the specified object. **/ dynamic function valueOf():ts.AnyOf2<String, js.lib.Symbol>; }, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REST { })
	function off<K>(event:K, listener:(args:haxe.extern.Rest<Any>) -> Void):REST;
	@:overload(function<S>(?event:{ /** Returns a string representation of a string.Returns a string representation of an object. **/ dynamic function toString():String; /** Returns the primitive value of the specified object.Returns the primitive value of the specified object. **/ dynamic function valueOf():ts.AnyOf2<String, js.lib.Symbol>; }):REST { })
	function removeAllListeners<K>(?event:K):REST;
	final cdn : CDN;
	final requestManager : RequestManager;
	/**
		Sets the authorization token that should be used for requests
	**/
	function setToken(token:String):REST;
	/**
		Runs a get request from the api
	**/
	function get(fullRoute:Dynamic, ?options:RequestData):js.lib.Promise<Any>;
	/**
		Runs a delete request from the api
	**/
	function delete(fullRoute:Dynamic, ?options:RequestData):js.lib.Promise<Any>;
	/**
		Runs a post request from the api
	**/
	function post(fullRoute:Dynamic, ?options:RequestData):js.lib.Promise<Dynamic>;
	/**
		Runs a put request from the api
	**/
	function put(fullRoute:Dynamic, ?options:RequestData):js.lib.Promise<Any>;
	/**
		Runs a patch request from the api
	**/
	function patch(fullRoute:Dynamic, ?options:RequestData):js.lib.Promise<Any>;
	/**
		Runs a request from the api
	**/
	function request(options:InternalRequest):js.lib.Promise<Any>;
	/**
		Alias for `emitter.on(eventName, listener)`.
	**/
	function addListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REST;
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
	**/
	function removeListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REST;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to`Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):REST;
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
	**/
	function prependListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REST;
	/**
		Adds a **one-time**`listener` function for the event named `eventName` to the_beginning_ of the listeners array. The next time `eventName` is triggered, this
		listener is removed, and then invoked.
		
		```js
		server.prependOnceListener('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function prependOnceListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):REST;
	static var prototype : REST;
}