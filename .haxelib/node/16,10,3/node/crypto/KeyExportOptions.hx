package node.crypto;

typedef KeyExportOptions<T> = {
	var type : String;
	var format : T;
	@:optional
	var cipher : String;
	@:optional
	var passphrase : ts.AnyOf2<String, node.buffer.Buffer>;
};