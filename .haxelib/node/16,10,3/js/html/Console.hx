package js.html;

/**
	Provides access to the browser's debugging console (e.g. the Web Console in Firefox). The specifics of how it works varies from browser to browser, but there is a de facto set of features that are typically provided.
**/
@:native("Console") extern class Console {
	function new();
	var memory : Dynamic;
	/**
		`console.assert()` writes a message if `value` is [falsy](https://developer.mozilla.org/en-US/docs/Glossary/Falsy) or omitted. It only
		writes a message and does not otherwise affect execution. The output always
		starts with `"Assertion failed"`. If provided, `message` is formatted using `util.format()`.
		
		If `value` is [truthy](https://developer.mozilla.org/en-US/docs/Glossary/Truthy), nothing happens.
		
		```js
		console.assert(true, 'does nothing');
		
		console.assert(false, 'Whoops %s work', 'didn\'t');
		// Assertion failed: Whoops didn't work
		
		console.assert();
		// Assertion failed
		```
	**/
	@:overload(function(value:Dynamic, ?message:String, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function assert(?condition:Bool, ?message:String, data:haxe.extern.Rest<Dynamic>):Void;
	/**
		When `stdout` is a TTY, calling `console.clear()` will attempt to clear the
		TTY. When `stdout` is not a TTY, this method does nothing.
		
		The specific operation of `console.clear()` can vary across operating systems
		and terminal types. For most Linux operating systems, `console.clear()`operates similarly to the `clear` shell command. On Windows, `console.clear()`will clear only the output in the
		current terminal viewport for the Node.js
		binary.
	**/
	@:overload(function():Void { })
	function clear():Void;
	/**
		Maintains an internal counter specific to `label` and outputs to `stdout` the
		number of times `console.count()` has been called with the given `label`.
		
		```js
		> console.count()
		default: 1
		undefined
		> console.count('default')
		default: 2
		undefined
		> console.count('abc')
		abc: 1
		undefined
		> console.count('xyz')
		xyz: 1
		undefined
		> console.count('abc')
		abc: 2
		undefined
		> console.count()
		default: 3
		undefined
		>
		```
	**/
	@:overload(function(?label:String):Void { })
	function count(?label:String):Void;
	/**
		The `console.debug()` function is an alias for {@link log}.
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function debug(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	/**
		Uses `util.inspect()` on `obj` and prints the resulting string to `stdout`.
		This function bypasses any custom `inspect()` function defined on `obj`.
	**/
	@:overload(function(obj:Dynamic, ?options:node.util.InspectOptions):Void { })
	function dir(?value:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	/**
		This method calls `console.log()` passing it the arguments received.
		This method does not produce any XML formatting.
	**/
	@:overload(function(data:haxe.extern.Rest<Dynamic>):Void { })
	function dirxml(value:Dynamic):Void;
	/**
		Prints to `stderr` with newline. Multiple arguments can be passed, with the
		first used as the primary message and all additional used as substitution
		values similar to [`printf(3)`](http://man7.org/linux/man-pages/man3/printf.3.html) (the arguments are all passed to `util.format()`).
		
		```js
		const code = 5;
		console.error('error #%d', code);
		// Prints: error #5, to stderr
		console.error('error', code);
		// Prints: error 5, to stderr
		```
		
		If formatting elements (e.g. `%d`) are not found in the first string then `util.inspect()` is called on each argument and the resulting string
		values are concatenated. See `util.format()` for more information.
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function error(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	function exception(?message:String, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	/**
		Increases indentation of subsequent lines by spaces for `groupIndentation`length.
		
		If one or more `label`s are provided, those are printed first without the
		additional indentation.
	**/
	@:overload(function(label:haxe.extern.Rest<Dynamic>):Void { })
	function group(?groupTitle:String, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	/**
		An alias for {@link group}.
	**/
	@:overload(function(label:haxe.extern.Rest<Dynamic>):Void { })
	function groupCollapsed(?groupTitle:String, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	/**
		Decreases indentation of subsequent lines by spaces for `groupIndentation`length.
	**/
	@:overload(function():Void { })
	function groupEnd():Void;
	/**
		The `console.info()` function is an alias for {@link log}.
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function info(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	/**
		Prints to `stdout` with newline. Multiple arguments can be passed, with the
		first used as the primary message and all additional used as substitution
		values similar to [`printf(3)`](http://man7.org/linux/man-pages/man3/printf.3.html) (the arguments are all passed to `util.format()`).
		
		```js
		const count = 5;
		console.log('count: %d', count);
		// Prints: count: 5, to stdout
		console.log('count:', count);
		// Prints: count: 5, to stdout
		```
		
		See `util.format()` for more information.
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function log(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	function markTimeline(?label:String):Void;
	/**
		This method does not display anything unless used in the inspector.
		  Starts a JavaScript CPU profile with an optional label.
	**/
	@:overload(function(?label:String):Void { })
	function profile(?reportName:String):Void;
	/**
		This method does not display anything unless used in the inspector.
		  Stops the current JavaScript CPU profiling session if one has been started and prints the report to the Profiles panel of the inspector.
	**/
	@:overload(function(?label:String):Void { })
	function profileEnd(?reportName:String):Void;
	/**
		Try to construct a table with the columns of the properties of `tabularData`(or use `properties`) and rows of `tabularData` and log it. Falls back to just
		logging the argument if it can’t be parsed as tabular.
		
		```js
		// These can't be parsed as tabular data
		console.table(Symbol());
		// Symbol()
		
		console.table(undefined);
		// undefined
		
		console.table([{ a: 1, b: 'Y' }, { a: 'Z', b: 2 }]);
		// ┌─────────┬─────┬─────┐
		// │ (index) │  a  │  b  │
		// ├─────────┼─────┼─────┤
		// │    0    │  1  │ 'Y' │
		// │    1    │ 'Z' │  2  │
		// └─────────┴─────┴─────┘
		
		console.table([{ a: 1, b: 'Y' }, { a: 'Z', b: 2 }], ['a']);
		// ┌─────────┬─────┐
		// │ (index) │  a  │
		// ├─────────┼─────┤
		// │    0    │  1  │
		// │    1    │ 'Z' │
		// └─────────┴─────┘
		```
	**/
	@:overload(function(tabularData:Dynamic, ?properties:haxe.ds.ReadOnlyArray<String>):Void { })
	function table(tabularData:haxe.extern.Rest<Dynamic>):Void;
	/**
		Starts a timer that can be used to compute the duration of an operation. Timers
		are identified by a unique `label`. Use the same `label` when calling {@link timeEnd} to stop the timer and output the elapsed time in
		suitable time units to `stdout`. For example, if the elapsed
		time is 3869ms, `console.timeEnd()` displays "3.869s".
	**/
	@:overload(function(?label:String):Void { })
	function time(?label:String):Void;
	/**
		Stops a timer that was previously started by calling {@link time} and
		prints the result to `stdout`:
		
		```js
		console.time('100-elements');
		for (let i = 0; i < 100; i++) {}
		console.timeEnd('100-elements');
		// prints 100-elements: 225.438ms
		```
	**/
	@:overload(function(?label:String):Void { })
	function timeEnd(?label:String):Void;
	/**
		This method does not display anything unless used in the inspector.
		  Adds an event with the label `label` to the Timeline panel of the inspector.
	**/
	@:overload(function(?label:String):Void { })
	function timeStamp(?label:String):Void;
	function timeline(?label:String):Void;
	function timelineEnd(?label:String):Void;
	/**
		Prints to `stderr` the string `'Trace: '`, followed by the `util.format()` formatted message and stack trace to the current position in the code.
		
		```js
		console.trace('Show me');
		// Prints: (stack trace will vary based on where trace is called)
		//  Trace: Show me
		//    at repl:2:9
		//    at REPLServer.defaultEval (repl.js:248:27)
		//    at bound (domain.js:287:14)
		//    at REPLServer.runBound [as eval] (domain.js:300:12)
		//    at REPLServer.<anonymous> (repl.js:412:12)
		//    at emitOne (events.js:82:20)
		//    at REPLServer.emit (events.js:169:7)
		//    at REPLServer.Interface._onLine (readline.js:210:10)
		//    at REPLServer.Interface._line (readline.js:549:8)
		//    at REPLServer.Interface._ttyWrite (readline.js:826:14)
		```
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function trace(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	/**
		The `console.warn()` function is an alias for {@link error}.
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function warn(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	var Console : global.console.ConsoleConstructor;
	/**
		Resets the internal counter specific to `label`.
		
		```js
		> console.count('abc');
		abc: 1
		undefined
		> console.countReset('abc');
		undefined
		> console.count('abc');
		abc: 1
		undefined
		>
		```
	**/
	function countReset(?label:String):Void;
	/**
		For a timer that was previously started by calling {@link time}, prints
		the elapsed time and other `data` arguments to `stdout`:
		
		```js
		console.time('process');
		const value = expensiveProcess1(); // Returns 42
		console.timeLog('process', value);
		// Prints "process: 365.227ms 42".
		doExpensiveProcess2(value);
		console.timeEnd('process');
		```
	**/
	function timeLog(?label:String, data:haxe.extern.Rest<Dynamic>):Void;
	static var prototype : Console;
}