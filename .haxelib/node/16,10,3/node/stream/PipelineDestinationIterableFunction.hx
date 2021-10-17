package node.stream;

typedef PipelineDestinationIterableFunction<T> = (source:js.lib.AsyncIterable<T>) -> js.lib.AsyncIterable<Dynamic>;