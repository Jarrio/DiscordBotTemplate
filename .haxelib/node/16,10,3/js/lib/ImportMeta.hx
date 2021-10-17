package js.lib;

/**
	The type of `import.meta`.
	
	If you need to declare that a given property exists on `import.meta`,
	this type may be augmented via interface merging.
**/
typedef ImportMeta = {
	var url : String;
	@:optional
	function resolve(specified:String, ?parent:ts.AnyOf2<String, node.url.URL>):js.lib.Promise<String>;
};