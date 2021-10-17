package node.nodecolonstream;

@:jsRequire("node:stream/consumers") @valueModuleOnly extern class Consumers {
	static function buffer(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<node.buffer.Buffer>;
	static function text(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<String>;
	static function arrayBuffer(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<js.lib.ArrayBuffer>;
	static function blob(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<js.html.Blob>;
	static function json(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.Readable, js.lib.AsyncIterator<Dynamic, Dynamic, Null<Any>>>):js.lib.Promise<Any>;
}