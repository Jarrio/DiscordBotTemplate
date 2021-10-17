package node.crypto;

@:jsRequire("crypto", "Certificate") extern class Certificate {
	function new();
	function exportChallenge(spkac:BinaryLike):node.buffer.Buffer;
	function exportPublicKey(spkac:BinaryLike, ?encoding:String):node.buffer.Buffer;
	function verifySpkac(spkac:global.nodejs.ArrayBufferView):Bool;
	@:selfCall
	static function call():Certificate;
	@:native("exportChallenge")
	dynamic static function exportChallenge_(spkac:BinaryLike):node.buffer.Buffer;
	@:native("exportPublicKey")
	dynamic static function exportPublicKey_(spkac:BinaryLike, ?encoding:String):node.buffer.Buffer;
	@:native("verifySpkac")
	dynamic static function verifySpkac_(spkac:global.nodejs.ArrayBufferView):Bool;
}