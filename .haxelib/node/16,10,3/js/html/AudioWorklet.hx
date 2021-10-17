package js.html;

@:native("AudioWorklet") extern class AudioWorklet {
	function new();
	function addModule(moduleURL:String, ?options:WorkletOptions):js.lib.Promise<ts.Undefined>;
	static var prototype : AudioWorklet;
}