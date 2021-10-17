package js.html;

typedef IMSBlobBuilder = {
	function append(data:Dynamic, ?endings:String):Void;
	function getBlob(?contentType:String):js.html.Blob;
};