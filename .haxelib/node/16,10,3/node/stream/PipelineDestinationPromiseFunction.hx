package node.stream;

typedef PipelineDestinationPromiseFunction<T, P> = (source:js.lib.AsyncIterable<T>) -> js.lib.Promise<P>;