package discord_js;

@:jsRequire("discord.js", "BroadcastDispatcher") extern class BroadcastDispatcher {
	function new();
	public var broadcast : VoiceBroadcast;
	public final bitrateEditable : Bool;
	public final paused : Bool;
	public var pausedSince : Null<Float>;
	public final pausedTime : Float;
	public var player : Dynamic;
	public final streamTime : Float;
	public final totalStreamTime : Float;
	public function pause(?silence:Bool):Void;
	public function resume():Void;
	public function setBitrate(value:ts.AnyOf2<Float, String>):Bool;
	public function setFEC(enabled:Bool):Bool;
	public function setPLP(value:Float):Bool;
	@:overload(function(event:String, listener:(info:String) -> Void):BroadcastDispatcher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):BroadcastDispatcher { })
	@:overload(function(event:String, listener:(src:Dynamic) -> Void):BroadcastDispatcher { })
	@:overload(function(event:String, listener:(speaking:Bool) -> Void):BroadcastDispatcher { })
	@:overload(function(event:String, listener:(oldVolume:Float, newVolume:Float) -> Void):BroadcastDispatcher { })
	@:overload(function(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):BroadcastDispatcher { })
	dynamic function on(event:String, listener:() -> Void):BroadcastDispatcher;
	@:overload(function(event:String, listener:(info:String) -> Void):BroadcastDispatcher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):BroadcastDispatcher { })
	@:overload(function(event:String, listener:(src:Dynamic) -> Void):BroadcastDispatcher { })
	@:overload(function(event:String, listener:(speaking:Bool) -> Void):BroadcastDispatcher { })
	@:overload(function(event:String, listener:(oldVolume:Float, newVolume:Float) -> Void):BroadcastDispatcher { })
	@:overload(function(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):BroadcastDispatcher { })
	dynamic function once(event:String, listener:() -> Void):BroadcastDispatcher;
	public final volume : Float;
	public final volumeDecibels : Float;
	public final volumeEditable : Bool;
	public final volumeLogarithmic : Float;
	public function setVolume(volume:Float):Void;
	public function setVolumeDecibels(db:Float):Void;
	public function setVolumeLogarithmic(value:Float):Void;
	static var prototype : BroadcastDispatcher;
}