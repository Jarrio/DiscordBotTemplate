package node.vm;

typedef MeasureMemoryOptions = {
	@:optional
	var mode : MeasureMemoryMode;
	@:optional
	var context : Context;
};