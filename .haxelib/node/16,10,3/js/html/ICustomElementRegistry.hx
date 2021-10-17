package js.html;

typedef ICustomElementRegistry = {
	function define(name:String, constructor:haxe.Constraints.Function, ?options:ElementDefinitionOptions):Void;
	function get(name:String):Dynamic;
	function upgrade(root:js.html.Node):Void;
	function whenDefined(name:String):js.lib.Promise<ts.Undefined>;
};