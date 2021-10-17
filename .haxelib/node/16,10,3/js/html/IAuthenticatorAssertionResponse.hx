package js.html;

typedef IAuthenticatorAssertionResponse = {
	final authenticatorData : js.lib.ArrayBuffer;
	final signature : js.lib.ArrayBuffer;
	final userHandle : Null<js.lib.ArrayBuffer>;
	final clientDataJSON : js.lib.ArrayBuffer;
};