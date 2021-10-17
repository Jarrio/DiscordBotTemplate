package js.html;

typedef INavigationPreloadManager = {
	function disable():js.lib.Promise<ts.Undefined>;
	function enable():js.lib.Promise<ts.Undefined>;
	function getState():js.lib.Promise<NavigationPreloadState>;
	function setHeaderValue(value:String):js.lib.Promise<ts.Undefined>;
};