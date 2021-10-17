package js.html;

@:native("MSBlobBuilder") extern class MSBlobBuilder {
	function new();
	function append(data:Dynamic, ?endings:String):Void;
	function getBlob(?contentType:String):js.html.Blob;
	static var prototype : MSBlobBuilder;
}