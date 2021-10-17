package js.html;

@:native("ExtensionScriptApis") extern class ExtensionScriptApis {
	function new();
	function extensionIdToShortId(extensionId:String):Float;
	function fireExtensionApiTelemetry(functionName:String, isSucceeded:Bool, isSupported:Bool, errorString:String):Void;
	function genericFunction(routerAddress:Dynamic, ?parameters:String, ?callbackId:Float):Void;
	function genericSynchronousFunction(functionId:Float, ?parameters:String):String;
	function genericWebRuntimeCallout(to:Dynamic, from:Dynamic, payload:String):Void;
	function getExtensionId():String;
	function registerGenericFunctionCallbackHandler(callbackHandler:haxe.Constraints.Function):Void;
	function registerGenericPersistentCallbackHandler(callbackHandler:haxe.Constraints.Function):Void;
	function registerWebRuntimeCallbackHandler(handler:haxe.Constraints.Function):Dynamic;
	static var prototype : ExtensionScriptApis;
}