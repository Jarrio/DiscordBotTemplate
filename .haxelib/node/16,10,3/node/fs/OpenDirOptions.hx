package node.fs;

typedef OpenDirOptions = {
	@:optional
	var encoding : global.BufferEncoding;
	/**
		Number of directory entries that are buffered
		internally when reading from the directory. Higher values lead to better
		performance but higher memory usage.
	**/
	@:optional
	var bufferSize : Float;
};