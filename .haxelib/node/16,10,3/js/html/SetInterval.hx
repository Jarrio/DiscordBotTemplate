package js.html;

@:native("setInterval") @valueModuleOnly extern class SetInterval {
	@:overload(function<TArgs>(callback:(args:haxe.extern.Rest<Any>) -> Void, ?ms:Float, args:haxe.extern.Rest<Any>):global.nodejs.Timer { })
	@:overload(function(callback:(args:ts.Undefined) -> Void, ?ms:Float):global.nodejs.Timer { })
	@:selfCall
	static function call(handler:TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
}