package discord_js;

@:jsRequire("discord.js", "OverridableManager") extern class OverridableManager<V, K, R> extends BaseManager<V, K, R> {
	function new();
	public function add(data:Dynamic, cache:Dynamic):Dynamic;
	public function set(key:Dynamic):Dynamic;
	static var prototype : OverridableManager<Dynamic, Dynamic, Dynamic>;
}