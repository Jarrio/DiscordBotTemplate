package node.stream;

typedef PipelineSource<T> = ts.AnyOf4<global.nodejs.ReadableStream, Iterable<T>, js.lib.AsyncIterable<T>, PipelineSourceFunction<T>>;