package node.fs;

typedef WriteVResult = {
	var bytesWritten : Float;
	var buffers : Array<global.nodejs.ArrayBufferView>;
};