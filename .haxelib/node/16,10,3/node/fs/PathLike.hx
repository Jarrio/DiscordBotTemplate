package node.fs;

/**
	Valid types for path values in "fs".
**/
typedef PathLike = ts.AnyOf3<String, node.buffer.Buffer, node.url.URL>;