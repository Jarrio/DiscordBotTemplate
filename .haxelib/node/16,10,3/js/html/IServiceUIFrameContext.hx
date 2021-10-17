package js.html;

typedef IServiceUIFrameContext = {
	function getCachedFrameMessage(key:String):String;
	function postFrameMessage(key:String, data:String):Void;
};