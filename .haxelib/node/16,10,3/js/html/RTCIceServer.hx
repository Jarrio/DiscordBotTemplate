package js.html;

typedef RTCIceServer = {
	@:optional
	var credential : ts.AnyOf2<String, RTCOAuthCredential>;
	@:optional
	var credentialType : RTCIceCredentialType;
	var urls : ts.AnyOf2<String, Array<String>>;
	@:optional
	var username : String;
};