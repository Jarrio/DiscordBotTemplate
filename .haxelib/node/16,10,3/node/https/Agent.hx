package node.https;

/**
	An `Agent` object for HTTPS similar to `http.Agent`. See {@link request} for more information.
**/
@:jsRequire("https", "Agent") extern class Agent extends node.http.Agent {
	function new(?options:AgentOptions);
	var options : AgentOptions;
	static var prototype : Agent;
}