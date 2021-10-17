package js.html;

/**
	This ServiceWorker API interface provides an interface for registering and listing sync registrations.
**/
typedef ISyncManager = {
	function getTags():js.lib.Promise<Array<String>>;
	function register(tag:String):js.lib.Promise<ts.Undefined>;
};