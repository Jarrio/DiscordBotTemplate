package node.crypto;

typedef PublicKeyInput = {
	var key : ts.AnyOf2<String, node.buffer.Buffer>;
	@:optional
	var format : KeyFormat;
	@:optional
	var type : String;
};