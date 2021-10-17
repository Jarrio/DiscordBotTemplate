package node.net;

typedef ServerOpts = {
	/**
		Indicates whether half-opened TCP connections are allowed.
	**/
	@:optional
	var allowHalfOpen : Bool;
	/**
		Indicates whether the socket should be paused on incoming connections.
	**/
	@:optional
	var pauseOnConnect : Bool;
};