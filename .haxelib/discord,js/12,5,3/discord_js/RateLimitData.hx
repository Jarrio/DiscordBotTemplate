package discord_js;

typedef RateLimitData = {
	var timeout : Float;
	var limit : Float;
	var timeDifference : Float;
	var method : String;
	var path : String;
	var route : String;
};