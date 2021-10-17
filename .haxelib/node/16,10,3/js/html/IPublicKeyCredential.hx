package js.html;

typedef IPublicKeyCredential = {
	final rawId : js.lib.ArrayBuffer;
	final response : AuthenticatorResponse;
	function getClientExtensionResults():AuthenticationExtensionsClientOutputs;
	final id : String;
	final type : String;
};