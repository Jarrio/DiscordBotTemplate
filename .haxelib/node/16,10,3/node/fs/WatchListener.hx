package node.fs;

typedef WatchListener<T> = (event:WatchEventType, filename:T) -> Void;