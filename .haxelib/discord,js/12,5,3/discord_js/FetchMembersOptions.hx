package discord_js;

typedef FetchMembersOptions = {
	@:optional
	var user : ts.AnyOf5<String, User, GuildMember, Message, Array<UserResolvable>>;
	@:optional
	var query : String;
	@:optional
	var limit : Float;
	@:optional
	var withPresences : Bool;
	@:optional
	var time : Float;
	@:optional
	var nonce : String;
	@:optional
	var force : Bool;
};