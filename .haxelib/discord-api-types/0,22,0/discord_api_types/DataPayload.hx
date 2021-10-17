package discord_api_types;

typedef DataPayload<Event, D> = {
	/**
		Opcode for the payload
	**/
	var op : Int;
	/**
		The event name for this payload
	**/
	var t : Event;
	/**
		Event data
	**/
	var d : D;
	/**
		Sequence number, used for resuming sessions and heartbeats
	**/
	var s : Float;
};