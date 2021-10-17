package node.child_process;

typedef ExecException = {
	@:optional
	var cmd : String;
	@:optional
	var killed : Bool;
	@:optional
	var code : Float;
	@:optional
	var signal : global.nodejs.Signals;
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};