package discord_js;

typedef TypingData = {
	var user : ts.AnyOf2<User, PartialUser>;
	var since : js.lib.Date;
	var lastTimestamp : js.lib.Date;
	var elapsedTime : Float;
	var timeout : Dynamic;
};