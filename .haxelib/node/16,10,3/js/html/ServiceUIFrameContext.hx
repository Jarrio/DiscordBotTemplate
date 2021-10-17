package js.html;

@:native("ServiceUIFrameContext") extern class ServiceUIFrameContext {
	function getCachedFrameMessage(key:String):String;
	function postFrameMessage(key:String, data:String):Void;
}