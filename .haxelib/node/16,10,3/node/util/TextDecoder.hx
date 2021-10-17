package node.util;

/**
	An implementation of the [WHATWG Encoding Standard](https://encoding.spec.whatwg.org/) `TextDecoder` API.
	
	```js
	const decoder = new TextDecoder('shift_jis');
	let string = '';
	let buffer;
	while (buffer = getNextChunkSomehow()) {
	   string += decoder.decode(buffer, { stream: true });
	}
	string += decoder.decode(); // end-of-stream
	```
**/
@:jsRequire("util", "TextDecoder") extern class TextDecoder {
	function new(?encoding:String, ?options:{ @:optional var fatal : Bool; @:optional var ignoreBOM : Bool; });
	/**
		The encoding supported by the `TextDecoder` instance.
	**/
	final encoding : String;
	/**
		The value will be `true` if decoding errors result in a `TypeError` being
		thrown.
	**/
	final fatal : Bool;
	/**
		The value will be `true` if the decoding result will include the byte order
		mark.
	**/
	final ignoreBOM : Bool;
	/**
		Decodes the `input` and returns a string. If `options.stream` is `true`, any
		incomplete byte sequences occurring at the end of the `input` are buffered
		internally and emitted after the next call to `textDecoder.decode()`.
		
		If `textDecoder.fatal` is `true`, decoding errors that occur will result in a`TypeError` being thrown.
	**/
	function decode(?input:ts.AnyOf13<js.lib.Int8Array, js.lib.ArrayBuffer, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.BigInt64Array, js.lib.BigUint64Array, js.lib.DataView>, ?options:{ @:optional var stream : Bool; }):String;
	static var prototype : TextDecoder;
}