package js.html;

@:native("MSGesture") extern class MSGesture {
	function new();
	var target : js.html.DOMElement;
	function addPointer(pointerId:Float):Void;
	function stop():Void;
	static var prototype : MSGesture;
}