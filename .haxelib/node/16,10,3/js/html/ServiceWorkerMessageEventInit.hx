package js.html;

typedef ServiceWorkerMessageEventInit = {
	@:optional
	var data : Dynamic;
	@:optional
	var lastEventId : String;
	@:optional
	var origin : String;
	@:optional
	var ports : Array<js.html.MessagePort>;
	@:optional
	var source : ts.AnyOf2<js.html.MessagePort, js.html.ServiceWorker>;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};