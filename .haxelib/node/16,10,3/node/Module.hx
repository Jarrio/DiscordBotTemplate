package node;

@:jsRequire("module") extern class Module {
	function new(id:String, ?parent:Module);
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
	static var prototype : Module;
	static function runMain():Void;
	static function wrap(code:String):String;
	static function createRequire(path:ts.AnyOf2<String, node.url.URL>):global.NodeRequire;
	static var builtinModules : Array<String>;
	static var Module : {
		/**
			The `module.syncBuiltinESMExports()` method updates all the live bindings for
			builtin `ES Modules` to match the properties of the `CommonJS` exports. It
			does not add or remove exported names from the `ES Modules`.
			
			```js
			const fs = require('fs');
			const assert = require('assert');
			const { syncBuiltinESMExports } = require('module');
			
			fs.readFile = newAPI;
			
			delete fs.readFileSync;
			
			function newAPI() {
			   // ...
			}
			
			fs.newAPI = newAPI;
			
			syncBuiltinESMExports();
			
			import('fs').then((esmFS) => {
			   // It syncs the existing readFile property with the new value
			   assert.strictEqual(esmFS.readFile, newAPI);
			   // readFileSync has been deleted from the required fs
			   assert.strictEqual('readFileSync' in fs, false);
			   // syncBuiltinESMExports() does not remove readFileSync from esmFS
			   assert.strictEqual('readFileSync' in esmFS, true);
			   // syncBuiltinESMExports() does not add names
			   assert.strictEqual(esmFS.newAPI, undefined);
			});
			```
		**/
		function syncBuiltinESMExports():Void;
		/**
			`path` is the resolved path for the file for which a corresponding source map
			should be fetched.
		**/
		function findSourceMap(path:String, ?error:js.lib.Error):node.module.SourceMap;
		var prototype : Module;
		function runMain():Void;
		function wrap(code:String):String;
		function createRequire(path:ts.AnyOf2<String, node.url.URL>):global.NodeRequire;
		var builtinModules : Array<String>;
		var Module : Dynamic;
	};
	/**
		The `module.syncBuiltinESMExports()` method updates all the live bindings for
		builtin `ES Modules` to match the properties of the `CommonJS` exports. It
		does not add or remove exported names from the `ES Modules`.
		
		```js
		const fs = require('fs');
		const assert = require('assert');
		const { syncBuiltinESMExports } = require('module');
		
		fs.readFile = newAPI;
		
		delete fs.readFileSync;
		
		function newAPI() {
		   // ...
		}
		
		fs.newAPI = newAPI;
		
		syncBuiltinESMExports();
		
		import('fs').then((esmFS) => {
		   // It syncs the existing readFile property with the new value
		   assert.strictEqual(esmFS.readFile, newAPI);
		   // readFileSync has been deleted from the required fs
		   assert.strictEqual('readFileSync' in fs, false);
		   // syncBuiltinESMExports() does not remove readFileSync from esmFS
		   assert.strictEqual('readFileSync' in esmFS, true);
		   // syncBuiltinESMExports() does not add names
		   assert.strictEqual(esmFS.newAPI, undefined);
		});
		```
	**/
	static function syncBuiltinESMExports():Void;
	/**
		`path` is the resolved path for the file for which a corresponding source map
		should be fetched.
	**/
	static function findSourceMap(path:String, ?error:js.lib.Error):node.module.SourceMap;
}