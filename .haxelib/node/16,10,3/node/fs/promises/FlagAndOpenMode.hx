package node.fs.promises;

typedef FlagAndOpenMode = {
	@:optional
	var mode : ts.AnyOf2<String, Float>;
	@:optional
	var flag : ts.AnyOf2<String, Float>;
};