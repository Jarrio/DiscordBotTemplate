package global.nodejs;

typedef RequireExtensions = {
	@:native(".js")
	dynamic function _js(m:Module, filename:String):Dynamic;
	@:native(".json")
	dynamic function _json(m:Module, filename:String):Dynamic;
	@:native(".node")
	dynamic function _node(m:Module, filename:String):Dynamic;
};