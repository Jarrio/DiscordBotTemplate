package node.crypto;

typedef BasePrivateKeyEncodingOptions<T> = {
	var format : T;
	@:optional
	var cipher : String;
	@:optional
	var passphrase : String;
};