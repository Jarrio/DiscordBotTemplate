package global.nodejs;

typedef Timeout = {
	/**
		If true, the `Timeout` object will keep the Node.js event loop active.
	**/
	function hasRef():Bool;
	/**
		Sets the timer's start time to the current time, and reschedules the timer to
		call its callback at the previously specified duration adjusted to the current
		time. This is useful for refreshing a timer without allocating a new
		JavaScript object.
		
		Using this on a timer that has already called its callback will reactivate the
		timer.
	**/
	function refresh():Timeout;
	function ref():Timeout;
	function unref():Timeout;
};