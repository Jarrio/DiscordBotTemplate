package js.html;

/**
	A controller object that allows you to abort one or more DOM requests as and when desired.
	
	A controller object that allows you to abort one or more DOM requests as and when desired.
**/
typedef IAbortController = {
	/**
		Returns the AbortSignal object associated with this object.
		
		Returns the AbortSignal object associated with this object.
	**/
	final signal : js.html.AbortSignal;
	/**
		Invoking this method will set this object's AbortSignal's aborted flag and signal to any observers that the associated activity is to be aborted.
		
		Invoking this method will set this object's AbortSignal's aborted flag and signal to any observers that the associated activity is to be aborted.
	**/
	@:overload(function():Void { })
	function abort():Void;
};