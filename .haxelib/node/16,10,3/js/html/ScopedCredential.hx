package js.html;

@:native("ScopedCredential") extern class ScopedCredential {
	function new();
	final id : js.lib.ArrayBuffer;
	final type : String;
	static var prototype : ScopedCredential;
}