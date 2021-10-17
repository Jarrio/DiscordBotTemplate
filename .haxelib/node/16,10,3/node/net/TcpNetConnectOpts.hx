package node.net;

typedef TcpNetConnectOpts = {
	@:optional
	var timeout : Float;
	var port : Float;
	@:optional
	var host : String;
	@:optional
	var localAddress : String;
	@:optional
	var localPort : Float;
	@:optional
	var hints : Float;
	@:optional
	var family : Float;
	@:optional
	dynamic function lookup(hostname:String, options:node.dns.LookupOneOptions, callback:(err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void):Void;
	/**
		If specified, incoming data is stored in a single buffer and passed to the supplied callback when data arrives on the socket.
		Note: this will cause the streaming functionality to not provide any data, however events like 'error', 'end', and 'close' will
		still be emitted as normal and methods like pause() and resume() will also behave as expected.
	**/
	@:optional
	var onread : OnReadOpts;
	@:optional
	var fd : Float;
	@:optional
	var allowHalfOpen : Bool;
	@:optional
	var readable : Bool;
	@:optional
	var writable : Bool;
};