package node.module;

@:jsRequire("module", "SourceMap") extern class SourceMap {
	function new(payload:SourceMapPayload);
	/**
		Getter for the payload used to construct the `SourceMap` instance.
	**/
	final payload : SourceMapPayload;
	/**
		Given a line number and column number in the generated source file, returns
		an object representing the position in the original file. The object returned
		consists of the following keys:
	**/
	function findEntry(line:Float, column:Float):SourceMapping;
	static var prototype : SourceMap;
}