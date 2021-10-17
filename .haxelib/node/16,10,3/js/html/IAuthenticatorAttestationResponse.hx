package js.html;

typedef IAuthenticatorAttestationResponse = {
	final attestationObject : js.lib.ArrayBuffer;
	final clientDataJSON : js.lib.ArrayBuffer;
};