package node.perf_hooks;

typedef Performance = {
	/**
		If name is not provided, removes all PerformanceMark objects from the Performance Timeline.
		If name is provided, removes only the named mark.
	**/
	function clearMarks(?name:String):Void;
	/**
		Creates a new PerformanceMark entry in the Performance Timeline.
		A PerformanceMark is a subclass of PerformanceEntry whose performanceEntry.entryType is always 'mark',
		and whose performanceEntry.duration is always 0.
		Performance marks are used to mark specific significant moments in the Performance Timeline.
	**/
	function mark(?name:String, ?options:MarkOptions):Void;
	/**
		Creates a new PerformanceMeasure entry in the Performance Timeline.
		A PerformanceMeasure is a subclass of PerformanceEntry whose performanceEntry.entryType is always 'measure',
		and whose performanceEntry.duration measures the number of milliseconds elapsed since startMark and endMark.
		
		The startMark argument may identify any existing PerformanceMark in the the Performance Timeline, or may identify
		any of the timestamp properties provided by the PerformanceNodeTiming class. If the named startMark does not exist,
		then startMark is set to timeOrigin by default.
		
		The endMark argument must identify any existing PerformanceMark in the the Performance Timeline or any of the timestamp
		properties provided by the PerformanceNodeTiming class. If the named endMark does not exist, an error will be thrown.
	**/
	@:overload(function(name:String, options:MeasureOptions):Void { })
	function measure(name:String, ?startMark:String, ?endMark:String):Void;
	/**
		An instance of the PerformanceNodeTiming class that provides performance metrics for specific Node.js operational milestones.
	**/
	final nodeTiming : PerformanceNodeTiming;
	function now():Float;
	/**
		The timeOrigin specifies the high resolution millisecond timestamp from which all performance metric durations are measured.
	**/
	final timeOrigin : Float;
	/**
		Wraps a function within a new function that measures the running time of the wrapped function.
		A PerformanceObserver must be subscribed to the 'function' event type in order for the timing details to be accessed.
	**/
	function timerify<T>(fn:T, ?options:TimerifyOptions):T;
	/**
		eventLoopUtilization is similar to CPU utilization except that it is calculated using high precision wall-clock time.
		It represents the percentage of time the event loop has spent outside the event loop's event provider (e.g. epoll_wait).
		No other CPU idle time is taken into consideration.
	**/
	dynamic function eventLoopUtilization(?util1:EventLoopUtilization, ?util2:EventLoopUtilization):EventLoopUtilization;
};