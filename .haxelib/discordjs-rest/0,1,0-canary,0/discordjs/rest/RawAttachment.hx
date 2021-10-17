package discordjs.rest;

/**
	Represents an attachment to be added to the request
**/
typedef RawAttachment = {
	var fileName : String;
	var rawBuffer : global.Buffer;
};