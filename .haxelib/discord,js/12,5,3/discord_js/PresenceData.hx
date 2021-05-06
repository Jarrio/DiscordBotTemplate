package discord_js;

typedef PresenceData = {
	@:optional
	var status : PresenceStatusData;
	@:optional
	var afk : Bool;
	@:optional
	var activity : {
		@:optional
		var name : String;
		@:optional
		var type : ts.AnyOf2<Float, String>;
		@:optional
		var url : String;
	};
	@:optional
	var shardID : ts.AnyOf2<Float, Array<Float>>;
};