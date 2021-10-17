package global;

typedef NodeRequire = {
	@:selfCall
	function call(id:String):Dynamic;
	var resolve : global.nodejs.RequireResolve;
	var cache : global.nodejs.Dict<NodeModule>;
	var extensions : global.nodejs.RequireExtensions;
	var main : Null<global.nodejs.Module>;
};