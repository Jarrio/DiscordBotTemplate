package node.crypto;

typedef PrivateKeyInput = {
	var key : ts.AnyOf2<String, node.buffer.Buffer>;
	@:optional
	var format : KeyFormat;
	@:optional
	var type : String;
	@:optional
	var passphrase : ts.AnyOf2<String, node.buffer.Buffer>;
};