package global.nodejs;

typedef Immediate = {
	/**
		If true, the `Immediate` object will keep the Node.js event loop active.
	**/
	function hasRef():Bool;
	var _onImmediate : haxe.Constraints.Function;
	function ref():Immediate;
	function unref():Immediate;
};