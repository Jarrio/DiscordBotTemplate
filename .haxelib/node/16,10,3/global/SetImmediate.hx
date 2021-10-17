package global;

@:native("setImmediate") @valueModuleOnly extern class SetImmediate {
	@:overload(function(callback:(args:ts.Undefined) -> Void):global.nodejs.Immediate { })
	@:selfCall
	static function call<TArgs>(callback:(args:haxe.extern.Rest<Any>) -> Void, args:haxe.extern.Rest<Any>):global.nodejs.Immediate;
}