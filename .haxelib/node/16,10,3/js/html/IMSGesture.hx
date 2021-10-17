package js.html;

typedef IMSGesture = {
	var target : js.html.DOMElement;
	function addPointer(pointerId:Float):Void;
	function stop():Void;
};