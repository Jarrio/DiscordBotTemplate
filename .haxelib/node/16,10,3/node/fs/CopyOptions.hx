package node.fs;

typedef CopyOptions = {
	/**
		Dereference symlinks
	**/
	@:optional
	var dereference : Bool;
	/**
		When `force` is `false`, and the destination
		exists, throw an error.
	**/
	@:optional
	var errorOnExist : Bool;
	/**
		Function to filter copied files/directories. Return
		`true` to copy the item, `false` to ignore it.
	**/
	@:optional
	function filter(source:String, destination:String):Bool;
	/**
		Overwrite existing file or directory. _The copy
		operation will ignore errors if you set this to false and the destination
		exists. Use the `errorOnExist` option to change this behavior.
	**/
	@:optional
	var force : Bool;
	/**
		When `true` timestamps from `src` will
		be preserved.
	**/
	@:optional
	var preserveTimestamps : Bool;
	/**
		Copy directories recursively.
	**/
	@:optional
	var recursive : Bool;
};