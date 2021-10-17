package js.html;

typedef IWebAuthnAssertion = {
	final authenticatorData : js.lib.ArrayBuffer;
	final clientData : js.lib.ArrayBuffer;
	final credential : ScopedCredential;
	final signature : js.lib.ArrayBuffer;
};