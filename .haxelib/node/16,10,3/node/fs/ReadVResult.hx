package node.fs;

typedef ReadVResult = {
	var bytesRead : Float;
	var buffers : Array<global.nodejs.ArrayBufferView>;
};