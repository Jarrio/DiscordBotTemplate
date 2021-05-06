package discord_js;

@:jsRequire("discord.js", "BaseManager") extern class BaseManager<K, Holds, R> {
	function new(client:Client, iterable:Iterable<Dynamic>, holds:Constructable<Holds>, cacheType:Collection<K, Holds>);
	public var holds : Constructable<Holds>;
	public var cache : Collection<K, Holds>;
	public var cacheType : Collection<K, Holds>;
	public final client : Client;
	public function add(data:Dynamic, ?cache:Bool, ?__2:{ var id : K; var extras : Array<Dynamic>; }):Holds;
	public function resolve(resolvable:R):Null<Holds>;
	public function resolveID(resolvable:R):Null<K>;
	public function valueOf():Collection<K, Holds>;
	static var prototype : BaseManager<Dynamic, Dynamic, Dynamic>;
}