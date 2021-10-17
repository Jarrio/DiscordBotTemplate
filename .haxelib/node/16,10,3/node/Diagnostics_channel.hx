package node;

/**
	The `diagnostics_channel` module provides an API to create named channels
	to report arbitrary message data for diagnostics purposes.
	
	It can be accessed using:
	
	```js
	import diagnostics_channel from 'diagnostics_channel';
	```
	
	It is intended that a module writer wanting to report diagnostics messages
	will create one or many top-level channels to report messages through.
	Channels may also be acquired at runtime but it is not encouraged
	due to the additional overhead of doing so. Channels may be exported for
	convenience, but as long as the name is known it can be acquired anywhere.
	
	If you intend for your module to produce diagnostics data for others to
	consume it is recommended that you include documentation of what named
	channels are used along with the shape of the message data. Channel names
	should generally include the module name to avoid collisions with data from
	other modules.
**/
@:jsRequire("diagnostics_channel") @valueModuleOnly extern class Diagnostics_channel {
	/**
		Check if there are active subscribers to the named channel. This is helpful if
		the message you want to send might be expensive to prepare.
		
		This API is optional but helpful when trying to publish messages from very
		performance-sensitive code.
		
		```js
		import diagnostics_channel from 'diagnostics_channel';
		
		if (diagnostics_channel.hasSubscribers('my-channel')) {
		   // There are subscribers, prepare and publish message
		}
		```
	**/
	static function hasSubscribers(name:String):Bool;
	/**
		This is the primary entry-point for anyone wanting to interact with a named
		channel. It produces a channel object which is optimized to reduce overhead at
		publish time as much as possible.
		
		```js
		import diagnostics_channel from 'diagnostics_channel';
		
		const channel = diagnostics_channel.channel('my-channel');
		```
	**/
	static function channel(name:String):node.diagnostics_channel.Channel;
}