package node.crypto;

typedef VerifyPublicKeyInput = {
	var key : ts.AnyOf2<String, node.buffer.Buffer>;
	@:optional
	var format : KeyFormat;
	@:optional
	var type : String;
	@:optional
	var padding : Float;
	@:optional
	var saltLength : Float;
	@:optional
	var dsaEncoding : DSAEncoding;
};