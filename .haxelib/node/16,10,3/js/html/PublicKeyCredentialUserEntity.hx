package js.html;

typedef PublicKeyCredentialUserEntity = {
	var displayName : String;
	var id : js.lib.BufferSource;
	@:optional
	var icon : String;
	var name : String;
};