package node;

typedef IModule = {
	/**
		`true` if the module is running during the Node.js preload
	**/
	var isPreloading : Bool;
	var exports : Dynamic;
	var require : global.nodejs.Require;
	var id : String;
	var filename : String;
	var loaded : Bool;
	var parent : Null<global.nodejs.Module>;
	var children : Array<global.nodejs.Module>;
	var path : String;
	var paths : Array<String>;
};