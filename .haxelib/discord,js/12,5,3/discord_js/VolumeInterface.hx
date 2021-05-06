package discord_js;

@:jsRequire("discord.js", "VolumeInterface") extern class VolumeInterface {
	function new(?options:{ @:optional var volume : Float; });
	public final volume : Float;
	public final volumeDecibels : Float;
	public final volumeEditable : Bool;
	public final volumeLogarithmic : Float;
	public function setVolume(volume:Float):Void;
	public function setVolumeDecibels(db:Float):Void;
	public function setVolumeLogarithmic(value:Float):Void;
	public function on(event:String, listener:(oldVolume:Float, newVolume:Float) -> Void):VolumeInterface;
	public function once(event:String, listener:(oldVolume:Float, newVolume:Float) -> Void):VolumeInterface;
	static var prototype : VolumeInterface;
}