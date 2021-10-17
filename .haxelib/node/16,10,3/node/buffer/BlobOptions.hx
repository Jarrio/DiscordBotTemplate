package node.buffer;

typedef BlobOptions = {
	@:optional
	var encoding : global.BufferEncoding;
	/**
		The Blob content-type. The intent is for `type` to convey
		the MIME media type of the data, however no validation of the type format
		is performed.
	**/
	@:optional
	var type : String;
};