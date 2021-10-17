package node.console;

typedef ConsoleConstructorOptions = {
	var stdout : global.nodejs.WritableStream;
	@:optional
	var stderr : global.nodejs.WritableStream;
	@:optional
	var ignoreErrors : Bool;
	@:optional
	var colorMode : ts.AnyOf2<Bool, String>;
	@:optional
	var inspectOptions : node.util.InspectOptions;
	/**
		Set group indentation
	**/
	@:optional
	var groupIndentation : Float;
};