package node.fs;

typedef WriteFileOptions = Null<ts.AnyOf2<String, ObjectEncodingOptions & node.events.eventemitter.Abortable & {
	@:optional
	var mode : ts.AnyOf2<String, Float>;
	@:optional
	var flag : String;
}>>;