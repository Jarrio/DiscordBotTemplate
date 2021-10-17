package js.html;

@:native("ScopedCredentialInfo") extern class ScopedCredentialInfo {
	function new();
	final credential : ScopedCredential;
	final publicKey : js.html.CryptoKey;
	static var prototype : ScopedCredentialInfo;
}