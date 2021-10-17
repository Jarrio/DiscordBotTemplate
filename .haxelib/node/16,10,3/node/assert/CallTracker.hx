package node.assert;

/**
	This feature is currently experimental and behavior might still change.
**/
@:jsRequire("assert", "CallTracker") extern class CallTracker {
	function new();
	/**
		The wrapper function is expected to be called exactly `exact` times. If the
		function has not been called exactly `exact` times when `tracker.verify()` is called, then `tracker.verify()` will throw an
		error.
		
		```js
		import assert from 'assert';
		
		// Creates call tracker.
		const tracker = new assert.CallTracker();
		
		function func() {}
		
		// Returns a function that wraps func() that must be called exact times
		// before tracker.verify().
		const callsfunc = tracker.calls(func);
		```
	**/
	@:overload(function<Func>(?fn:Func, ?exact:Float):Func { })
	function calls(?exact:Float):() -> Void;
	/**
		The arrays contains information about the expected and actual number of calls of
		the functions that have not been called the expected number of times.
		
		```js
		import assert from 'assert';
		
		// Creates call tracker.
		const tracker = new assert.CallTracker();
		
		function func() {}
		
		function foo() {}
		
		// Returns a function that wraps func() that must be called exact times
		// before tracker.verify().
		const callsfunc = tracker.calls(func, 2);
		
		// Returns an array containing information on callsfunc()
		tracker.report();
		// [
		//  {
		//    message: 'Expected the func function to be executed 2 time(s) but was
		//    executed 0 time(s).',
		//    actual: 0,
		//    expected: 2,
		//    operator: 'func',
		//    stack: stack trace
		//  }
		// ]
		```
	**/
	function report():Array<CallTrackerReportInformation>;
	/**
		Iterates through the list of functions passed to `tracker.calls()` and will throw an error for functions that
		have not been called the expected number of times.
		
		```js
		import assert from 'assert';
		
		// Creates call tracker.
		const tracker = new assert.CallTracker();
		
		function func() {}
		
		// Returns a function that wraps func() that must be called exact times
		// before tracker.verify().
		const callsfunc = tracker.calls(func, 2);
		
		callsfunc();
		
		// Will throw an error since callsfunc() was only called once.
		tracker.verify();
		```
	**/
	function verify():Void;
	static var prototype : CallTracker;
}