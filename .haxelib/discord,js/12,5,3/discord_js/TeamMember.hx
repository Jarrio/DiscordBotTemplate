package discord_js;

@:jsRequire("discord.js", "TeamMember") extern class TeamMember extends Base {
	function new(team:Team, data:Dynamic);
	public var team : Team;
	public final id : String;
	public var permissions : Array<String>;
	public var membershipState : String;
	public var user : User;
	/**
		Returns a string representation of an object.
	**/
	public function toString():String;
	static var prototype : TeamMember;
}