package node.crypto;

typedef ICertificate = {
	function exportChallenge(spkac:BinaryLike):node.buffer.Buffer;
	function exportPublicKey(spkac:BinaryLike, ?encoding:String):node.buffer.Buffer;
	function verifySpkac(spkac:global.nodejs.ArrayBufferView):Bool;
};