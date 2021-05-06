package discord_js;

@:jsRequire("discord.js", "Base") extern class Base {
	function new(client:Client);
	public final client : Client;
	public function toJSON(props:haxe.extern.Rest<{ }>):Dynamic;
	public function valueOf():String;
	static var prototype : Base;
}