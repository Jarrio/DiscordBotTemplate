package discordjs.collection;

/**
	A Map with additional utility methods. This is used throughout discord.js rather than Arrays for anything that has
	an ID, for significantly improved performance and ease-of-use.
**/
@:jsRequire("@discordjs/collection", "Collection") extern class Collection<K, V> extends js.lib.Map<K, V> {
	function new(?entries:haxe.ds.ReadOnlyArray<ts.Tuple2<K, V>>);
	private var _array : Dynamic;
	private var _keyArray : Dynamic;
	/**
		The initial value of Object.prototype.constructor is the standard built-in Object constructor.
	**/
	var constructor : {
		var prototype : Collection<Dynamic, Dynamic>;
		@:native("default")
		final default_ : Dynamic;
	};
	/**
		Identical to [Map.set()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/set).
		Sets a new element in the collection with the specified key and value.
	**/
	function set(key:K, value:V):Collection<K, V>;
	/**
		Creates an ordered array of the values of this collection, and caches it internally. The array will only be
		reconstructed if an item is added to or removed from the collection, or if you change the length of the array
		itself. If you don't want this caching behavior, use `[...collection.values()]` or
		`Array.from(collection.values())` instead.
	**/
	function array():Array<V>;
	/**
		Creates an ordered array of the keys of this collection, and caches it internally. The array will only be
		reconstructed if an item is added to or removed from the collection, or if you change the length of the array
		itself. If you don't want this caching behavior, use `[...collection.keys()]` or
		`Array.from(collection.keys())` instead.
	**/
	function keyArray():Array<K>;
	/**
		Obtains the first value(s) in this collection.
	**/
	@:overload(function(amount:Float):Array<V> { })
	function first():Null<V>;
	/**
		Obtains the first key(s) in this collection.
	**/
	@:overload(function(amount:Float):Array<K> { })
	function firstKey():Null<K>;
	/**
		Obtains the last value(s) in this collection. This relies on {@link Collection#array}, and thus the caching
		mechanism applies here as well.
	**/
	@:overload(function(amount:Float):Array<V> { })
	function last():Null<V>;
	/**
		Obtains the last key(s) in this collection. This relies on {@link Collection#keyArray}, and thus the caching
		mechanism applies here as well.
	**/
	@:overload(function(amount:Float):Array<K> { })
	function lastKey():Null<K>;
	/**
		Obtains unique random value(s) from this collection. This relies on {@link Collection#array}, and thus the caching
		mechanism applies here as well.
	**/
	@:overload(function(amount:Float):Array<V> { })
	function random():V;
	/**
		Obtains unique random key(s) from this collection. This relies on {@link Collection#keyArray}, and thus the caching
		mechanism applies here as well.
	**/
	@:overload(function(amount:Float):Array<K> { })
	function randomKey():K;
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
		Maps each item into a Collection, then joins the results into a single Collection. Identical in behavior to
		[Array.flatMap()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/flatMap).
	**/
	@:overload(function<T, This>(fn:(value:V, key:K, collection:Collection<K, V>) -> Collection<K, T>, thisArg:This):Collection<K, T> { })
	function flatMap<T>(fn:(value:V, key:K, collection:Collection<K, V>) -> Collection<K, T>):Collection<K, T>;
	/**
		Maps each item to another value into an array. Identical in behavior to
		[Array.map()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map).
	**/
	@:overload(function<This, T>(fn:(value:V, key:K, collection:Collection<K, V>) -> T, thisArg:This):Array<T> { })
	function map<T>(fn:(value:V, key:K, collection:Collection<K, V>) -> T):Array<T>;
	/**
		Maps each item to another value into a collection. Identical in behavior to
		[Array.map()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map).
	**/
	@:overload(function<This, T>(fn:(value:V, key:K, collection:Collection<K, V>) -> T, thisArg:This):Collection<K, T> { })
	function mapValues<T>(fn:(value:V, key:K, collection:Collection<K, V>) -> T):Collection<K, T>;
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
	function concat(collections:haxe.extern.Rest<Collection<K, V>>):Collection<K, V>;
	/**
		Checks if this collection shares identical items with another.
		This is different to checking for equality using equal-signs, because
		the collections may be different objects, but contain the same data.
	**/
	function equals(collection:Collection<K, V>):Bool;
	/**
		The sort method sorts the items of a collection in place and returns it.
		The sort is not necessarily stable in Node 10 or older.
		The default sort order is according to string Unicode code points.
	**/
	function sort(?compareFunction:(firstValue:V, secondValue:V, firstKey:K, secondKey:K) -> Float):Collection<K, V>;
	/**
		The intersect method returns a new structure containing items where the keys are present in both original structures.
	**/
	function intersect(other:Collection<K, V>):Collection<K, V>;
	/**
		The difference method returns a new structure containing items where the key is present in one of the original structures but not the other.
	**/
	function difference(other:Collection<K, V>):Collection<K, V>;
	/**
		The sorted method sorts the items of a collection and returns it.
		The sort is not necessarily stable in Node 10 or older.
		The default sort order is according to string Unicode code points.
	**/
	function sorted(?compareFunction:(firstValue:V, secondValue:V, firstKey:K, secondKey:K) -> Float):Collection<K, V>;
	static var prototype : Collection<Dynamic, Dynamic>;
	@:native("default")
	static final default_ : {
		var prototype : Collection<Dynamic, Dynamic>;
		@:native("default")
		final default_ : Dynamic;
	};
}