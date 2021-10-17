package node.stream;

@:jsRequire("stream/promises") @valueModuleOnly extern class Promises {
	static function finished(stream:ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>, ?options:FinishedOptions):js.lib.Promise<ts.Undefined>;
	@:overload(function<A, T1, B>(source:A, transform1:T1, destination:B, ?options:PipelineOptions):PipelinePromise<B> { })
	@:overload(function<A, T1, T2, B>(source:A, transform1:T1, transform2:T2, destination:B, ?options:PipelineOptions):PipelinePromise<B> { })
	@:overload(function<A, T1, T2, T3, B>(source:A, transform1:T1, transform2:T2, transform3:T3, destination:B, ?options:PipelineOptions):PipelinePromise<B> { })
	@:overload(function<A, T1, T2, T3, T4, B>(source:A, transform1:T1, transform2:T2, transform3:T3, transform4:T4, destination:B, ?options:PipelineOptions):PipelinePromise<B> { })
	@:overload(function(streams:haxe.ds.ReadOnlyArray<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>, ?options:PipelineOptions):js.lib.Promise<ts.Undefined> { })
	@:overload(function(stream1:global.nodejs.ReadableStream, stream2:ts.AnyOf2<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:haxe.extern.Rest<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadWriteStream, PipelineOptions>>):js.lib.Promise<ts.Undefined> { })
	static function pipeline<A, B>(source:A, destination:B, ?options:PipelineOptions):PipelinePromise<B>;
}