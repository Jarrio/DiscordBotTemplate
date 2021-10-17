package js.html;

@:native("Worklet") extern class Worklet {
	function new();
	function addModule(moduleURL:String, ?options:WorkletOptions):js.lib.Promise<ts.Undefined>;
	static var prototype : Worklet;
}