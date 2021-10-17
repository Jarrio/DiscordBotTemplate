package node;

@:jsRequire("node:diagnostics_channel") @valueModuleOnly extern class NodeDiagnostics_channel {
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