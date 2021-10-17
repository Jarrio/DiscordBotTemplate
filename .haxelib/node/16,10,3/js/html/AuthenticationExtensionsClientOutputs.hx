package js.html;

typedef AuthenticationExtensionsClientOutputs = {
	@:optional
	var appid : Bool;
	@:optional
	var authnSel : Bool;
	@:optional
	var exts : AuthenticationExtensionsSupported;
	@:optional
	var loc : js.html.Coordinates;
	@:optional
	var txAuthGeneric : js.lib.ArrayBuffer;
	@:optional
	var txAuthSimple : String;
	@:optional
	var uvi : js.lib.ArrayBuffer;
	@:optional
	var uvm : UvmEntries;
};