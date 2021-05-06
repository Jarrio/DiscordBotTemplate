package discord_js;

@:jsRequire("discord.js", "StreamDispatcher") extern class StreamDispatcher {
	function new(player:Dynamic, ?options:StreamOptions, ?streams:Dynamic);
	public final bitrateEditable : Bool;
	public var broadcast : Null<VoiceBroadcast>;
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
	@:overload(function(event:String, listener:(info:String) -> Void):StreamDispatcher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):StreamDispatcher { })
	@:overload(function(event:String, listener:(src:Dynamic) -> Void):StreamDispatcher { })
	@:overload(function(event:String, listener:(speaking:Bool) -> Void):StreamDispatcher { })
	@:overload(function(event:String, listener:(oldVolume:Float, newVolume:Float) -> Void):StreamDispatcher { })
	@:overload(function(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):StreamDispatcher { })
	public function on(event:String, listener:() -> Void):StreamDispatcher;
	@:overload(function(event:String, listener:(info:String) -> Void):StreamDispatcher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):StreamDispatcher { })
	@:overload(function(event:String, listener:(src:Dynamic) -> Void):StreamDispatcher { })
	@:overload(function(event:String, listener:(speaking:Bool) -> Void):StreamDispatcher { })
	@:overload(function(event:String, listener:(oldVolume:Float, newVolume:Float) -> Void):StreamDispatcher { })
	@:overload(function(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):StreamDispatcher { })
	public function once(event:String, listener:() -> Void):StreamDispatcher;
	public final volume : Float;
	public final volumeDecibels : Float;
	public final volumeEditable : Bool;
	public final volumeLogarithmic : Float;
	public function setVolume(volume:Float):Void;
	public function setVolumeDecibels(db:Float):Void;
	public function setVolumeLogarithmic(value:Float):Void;
	static var prototype : StreamDispatcher;
}