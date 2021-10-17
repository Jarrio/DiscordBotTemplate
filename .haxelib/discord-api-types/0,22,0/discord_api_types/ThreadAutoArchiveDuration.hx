package discord_api_types;

@:enum extern abstract ThreadAutoArchiveDuration(Int) from Int to Int {
	var OneHour = 60;
	var OneDay = 1440;
	var ThreeDays = 4320;
	var OneWeek = 10080;
}