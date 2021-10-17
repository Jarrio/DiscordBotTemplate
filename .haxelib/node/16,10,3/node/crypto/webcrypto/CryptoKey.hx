package node.crypto.webcrypto;

@:jsRequire("crypto", "webcrypto.CryptoKey") extern class CryptoKey {
	function new();
	static var prototype : CryptoKey;
}