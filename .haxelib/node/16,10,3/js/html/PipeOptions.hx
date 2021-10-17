package js.html;

typedef PipeOptions = {
	@:optional
	var preventAbort : Bool;
	@:optional
	var preventCancel : Bool;
	@:optional
	var preventClose : Bool;
	@:optional
	var signal : js.html.AbortSignal;
};