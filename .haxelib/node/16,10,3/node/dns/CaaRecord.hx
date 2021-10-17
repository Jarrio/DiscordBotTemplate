package node.dns;

typedef CaaRecord = {
	var critial : Float;
	@:optional
	var issue : String;
	@:optional
	var issuewild : String;
	@:optional
	var iodef : String;
	@:optional
	var contactemail : String;
	@:optional
	var contactphone : String;
};