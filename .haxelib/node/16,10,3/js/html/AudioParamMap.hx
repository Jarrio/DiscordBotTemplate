package js.html;

@:native("AudioParamMap") extern class AudioParamMap {
	function new();
	function forEach(callbackfn:(value:js.html.audio.AudioParam, key:String, parent:AudioParamMap) -> Void, ?thisArg:Dynamic):Void;
	function get(key:String):Null<js.html.audio.AudioParam>;
	function has(key:String):Bool;
	final size : Float;
	/**
		Returns an iterable of key, value pairs for every entry in the map.
	**/
	function entries():js.lib.IterableIterator<ts.Tuple2<String, js.html.audio.AudioParam>>;
	/**
		Returns an iterable of keys in the map
	**/
	function keys():js.lib.IterableIterator<String>;
	/**
		Returns an iterable of values in the map
	**/
	function values():js.lib.IterableIterator<js.html.audio.AudioParam>;
	static var prototype : AudioParamMap;
}