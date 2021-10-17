package node.tls;

typedef PSKCallbackNegotation = {
	var psk : global.nodejs.ArrayBufferView;
	var identity : String;
};