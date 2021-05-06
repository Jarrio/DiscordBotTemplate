package discord_js;

@:jsRequire("discord.js", "Collection") extern class Collection<K, V> extends discordjs.collection.Collection<K, V> {
	function new();
	/**
		Maps each item into a Collection, then joins the results into a single Collection. Identical in behavior to
		[Array.flatMap()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/flatMap).
		
		Maps each item into a Collection, then joins the results into a single Collection. Identical in behavior to
		[Array.flatMap()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/flatMap).
	**/
	@:overload(function<T, This>(fn:(value:V, key:K, collection:Collection<K, V>) -> Collection<K, T>, thisArg:This):Collection<K, T> { })
	public function flatMap<T>(fn:(value:V, key:K, collection:Collection<K, V>) -> Collection<K, T>, ?thisArg:Any):Collection<K, T>;
	/**
		Maps each item to another value into a collection. Identical in behavior to
		[Array.map()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map).
		
		Maps each item to another value into a collection. Identical in behavior to
		[Array.map()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map).
	**/
	@:overload(function<This, T>(fn:(value:V, key:K, collection:Collection<K, V>) -> T, thisArg:This):Collection<K, T> { })
	public function mapValues<T>(fn:(value:V, key:K, collection:Collection<K, V>) -> T, ?thisArg:Any):Collection<K, T>;
	public function toJSON():Dynamic;
	/**
		Identical to [Map.set()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/set).
		Sets a new element in the collection with the specified key and value.
	**/
	function set(key:K, value:V):Collection<K, V>;
	/**
		Searches for a single item where the given function returns a truthy value. This behaves like
		[Array.find()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/find).
		<warn>All collections used in Discord.js are mapped using their `id` property, and if you want to find by id you
		should use the `get` method. See
		[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/get) for details.</warn>
	**/
	@:overload(function<T>(fn:(value:V, key:K, collection:Collection<K, V>) -> Bool, thisArg:T):Null<V> { })
	function find(fn:(value:V, key:K, collection:Collection<K, V>) -> Bool):Null<V>;
	/**
		Searches for the key of a single item where the given function returns a truthy value. This behaves like
		[Array.findIndex()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findIndex),
		but returns the key rather than the positional index.
	**/
	@:overload(function<T>(fn:(value:V, key:K, collection:Collection<K, V>) -> Bool, thisArg:T):Null<K> { })
	function findKey(fn:(value:V, key:K, collection:Collection<K, V>) -> Bool):Null<K>;
	/**
		Removes items that satisfy the provided filter function.
	**/
	@:overload(function<T>(fn:(value:V, key:K, collection:Collection<K, V>) -> Bool, thisArg:T):Float { })
	function sweep(fn:(value:V, key:K, collection:Collection<K, V>) -> Bool):Float;
	/**
		Identical to
		[Array.filter()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter),
		but returns a Collection instead of an Array.
	**/
	@:overload(function<T>(fn:(value:V, key:K, collection:Collection<K, V>) -> Bool, thisArg:T):Collection<K, V> { })
	function filter(fn:(value:V, key:K, collection:Collection<K, V>) -> Bool):Collection<K, V>;
	/**
		Partitions the collection into two collections where the first collection
		contains the items that passed and the second contains the items that failed.
	**/
	@:overload(function<T>(fn:(value:V, key:K, collection:Collection<K, V>) -> Bool, thisArg:T):ts.Tuple2<Collection<K, V>, Collection<K, V>> { })
	function partition(fn:(value:V, key:K, collection:Collection<K, V>) -> Bool):ts.Tuple2<Collection<K, V>, Collection<K, V>>;
	/**
		Maps each item to another value into an array. Identical in behavior to
		[Array.map()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map).
	**/
	@:overload(function<This, T>(fn:(value:V, key:K, collection:Collection<K, V>) -> T, thisArg:This):Array<T> { })
	function map<T>(fn:(value:V, key:K, collection:Collection<K, V>) -> T):Array<T>;
	/**
		Checks if there exists an item that passes a test. Identical in behavior to
		[Array.some()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some).
	**/
	@:overload(function<T>(fn:(value:V, key:K, collection:Collection<K, V>) -> Bool, thisArg:T):Bool { })
	function some(fn:(value:V, key:K, collection:Collection<K, V>) -> Bool):Bool;
	/**
		Checks if all items passes a test. Identical in behavior to
		[Array.every()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every).
	**/
	@:overload(function<T>(fn:(value:V, key:K, collection:Collection<K, V>) -> Bool, thisArg:T):Bool { })
	function every(fn:(value:V, key:K, collection:Collection<K, V>) -> Bool):Bool;
	/**
		Applies a function to produce a single value. Identical in behavior to
		[Array.reduce()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce).
	**/
	function reduce<T>(fn:(accumulator:T, value:V, key:K, collection:Collection<K, V>) -> T, ?initialValue:T):T;
	/**
		Identical to
		[Map.forEach()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/forEach),
		but returns the collection instead of undefined.
	**/
	@:overload(function<T>(fn:(value:V, key:K, collection:Collection<K, V>) -> Void, thisArg:T):Collection<K, V> { })
	function each(fn:(value:V, key:K, collection:Collection<K, V>) -> Void):Collection<K, V>;
	/**
		Runs a function on the collection and returns the collection.
	**/
	@:overload(function<T>(fn:(collection:Collection<K, V>) -> Void, thisArg:T):Collection<K, V> { })
	function tap(fn:(collection:Collection<K, V>) -> Void):Collection<K, V>;
	/**
		Creates an identical shallow copy of this collection.
	**/
	function clone():Collection<K, V>;
	/**
		Combines this collection with others into a new collection. None of the source collections are modified.
	**/
	function concat(collections:haxe.extern.Rest<discordjs.collection.Collection<K, V>>):Collection<K, V>;
	/**
		The sort method sorts the items of a collection in place and returns it.
		The sort is not necessarily stable in Node 10 or older.
		The default sort order is according to string Unicode code points.
	**/
	function sort(?compareFunction:(firstValue:V, secondValue:V, firstKey:K, secondKey:K) -> Float):Collection<K, V>;
	/**
		The sorted method sorts the items of a collection and returns it.
		The sort is not necessarily stable in Node 10 or older.
		The default sort order is according to string Unicode code points.
	**/
	function sorted(?compareFunction:(firstValue:V, secondValue:V, firstKey:K, secondKey:K) -> Float):Collection<K, V>;
	static var prototype : Collection<Dynamic, Dynamic>;
}