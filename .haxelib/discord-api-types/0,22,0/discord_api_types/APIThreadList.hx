package discord_api_types;

typedef APIThreadList = {
	/**
		The threads that were fetched
	**/
	var threads : Array<APIChannel>;
	/**
		The members for the client user in each of the fetched threads
	**/
	var members : Array<APIThreadMember>;
	/**
		Whether there are potentially additional threads
	**/
	@:optional
	var has_more : Bool;
};