package global.nodejs;

typedef ProcessReport = {
	/**
		Directory where the report is written.
		working directory of the Node.js process.
	**/
	var directory : String;
	/**
		Filename where the report is written.
		The default value is the empty string.
	**/
	var filename : String;
	/**
		Returns a JSON-formatted diagnostic report for the running process.
		The report's JavaScript stack trace is taken from err, if present.
	**/
	function getReport(?err:js.lib.Error):String;
	/**
		If true, a diagnostic report is generated on fatal errors,
		such as out of memory errors or failed C++ assertions.
	**/
	var reportOnFatalError : Bool;
	/**
		If true, a diagnostic report is generated when the process
		receives the signal specified by process.report.signal.
	**/
	var reportOnSignal : Bool;
	/**
		If true, a diagnostic report is generated on uncaught exception.
	**/
	var reportOnUncaughtException : Bool;
	/**
		The signal used to trigger the creation of a diagnostic report.
	**/
	var signal : Signals;
	/**
		Writes a diagnostic report to a file. If filename is not provided, the default filename
		includes the date, time, PID, and a sequence number.
		The report's JavaScript stack trace is taken from err, if present.
	**/
	@:overload(function(?error:js.lib.Error):String { })
	@:overload(function(?fileName:String, ?err:js.lib.Error):String { })
	function writeReport(?fileName:String):String;
};