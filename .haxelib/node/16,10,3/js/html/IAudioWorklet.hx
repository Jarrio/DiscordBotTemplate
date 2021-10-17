package js.html;

typedef IAudioWorklet = {
	function addModule(moduleURL:String, ?options:WorkletOptions):js.lib.Promise<ts.Undefined>;
};