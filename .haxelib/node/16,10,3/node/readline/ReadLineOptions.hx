package node.readline;

typedef ReadLineOptions = {
	var input : global.nodejs.ReadableStream;
	@:optional
	var output : global.nodejs.WritableStream;
	@:optional
	dynamic function completer(line:String, callback:ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, result:CompleterResult) -> Void>):ts.AnyOf2<ts.Undefined, CompleterResult>;
	@:optional
	var terminal : Bool;
	/**
		Initial list of history lines. This option makes sense
		only if `terminal` is set to `true` by the user or by an internal `output`
		check, otherwise the history caching mechanism is not initialized at all.
	**/
	@:optional
	var history : Array<String>;
	@:optional
	var historySize : Float;
	@:optional
	var prompt : String;
	@:optional
	var crlfDelay : Float;
	/**
		If `true`, when a new input line added
		to the history list duplicates an older one, this removes the older line
		from the list.
	**/
	@:optional
	var removeHistoryDuplicates : Bool;
	@:optional
	var escapeCodeTimeout : Float;
	@:optional
	var tabSize : Float;
};