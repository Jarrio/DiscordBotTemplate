package js.html;

@:native("setTimeout") @valueModuleOnly extern class SetTimeout {
	@:overload(function<TArgs>(callback:(args:haxe.extern.Rest<Any>) -> Void, ?ms:Float, args:haxe.extern.Rest<Any>):global.nodejs.Timeout { })
	@:overload(function(callback:(args:ts.Undefined) -> Void, ?ms:Float):global.nodejs.Timeout { })
	@:selfCall
	static function call(handler:TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
}