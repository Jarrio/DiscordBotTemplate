package js.html;

@:native("AuthenticatorResponse") extern class AuthenticatorResponse {
	function new();
	final clientDataJSON : js.lib.ArrayBuffer;
	static var prototype : AuthenticatorResponse;
}