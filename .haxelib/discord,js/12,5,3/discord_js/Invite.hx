package discord_js;

@:jsRequire("discord.js", "Invite") extern class Invite extends Base {
	function new(client:Client, data:Dynamic);
	public var channel : ts.AnyOf2<GuildChannel, PartialGroupDMChannel>;
	public var code : String;
	public final deletable : Bool;
	public final createdAt : Null<js.lib.Date>;
	public var createdTimestamp : Null<Float>;
	public final expiresAt : Null<js.lib.Date>;
	public final expiresTimestamp : Null<Float>;
	public var guild : Null<Guild>;
	public var inviter : Null<User>;
	public var maxAge : Null<Float>;
	public var maxUses : Null<Float>;
	public var memberCount : Float;
	public var presenceCount : Float;
	public var targetUser : Null<User>;
	public var targetUserType : Null<Float>;
	public var temporary : Null<Bool>;
	public final url : String;
	public var uses : Null<Float>;
	public function delete(?reason:String):js.lib.Promise<Invite>;
	public function toJSON():Dynamic;
	/**
		Returns a string representation of an object.
	**/
	public function toString():String;
	static var prototype : Invite;
}