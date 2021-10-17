package js.html;

typedef IWorklet = {
	function addModule(moduleURL:String, ?options:WorkletOptions):js.lib.Promise<ts.Undefined>;
};