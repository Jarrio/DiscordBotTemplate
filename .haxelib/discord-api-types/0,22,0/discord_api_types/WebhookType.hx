package discord_api_types;

@:enum extern abstract WebhookType(Int) from Int to Int {
	/**
		Incoming Webhooks can post messages to channels with a generated token
	**/
	var Incoming = 1;
	/**
		Channel Follower Webhooks are internal webhooks used with Channel Following to post new messages into channels
	**/
	var ChannelFollower = 2;
	/**
		Application webhooks are webhooks used with Interactions
	**/
	var Application = 3;
}