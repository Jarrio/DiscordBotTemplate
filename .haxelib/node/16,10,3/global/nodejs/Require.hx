package global.nodejs;

typedef Require = {
	@:selfCall
	function call(id:String):Dynamic;
	var resolve : RequireResolve;
	var cache : Dict<global.NodeModule>;
	var extensions : RequireExtensions;
	var main : Null<Module>;
};