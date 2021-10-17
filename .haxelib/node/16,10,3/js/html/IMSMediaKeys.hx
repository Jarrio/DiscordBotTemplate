package js.html;

typedef IMSMediaKeys = {
	final keySystem : String;
	function createSession(type:String, initData:js.lib.Uint8Array, ?cdmData:js.lib.Uint8Array):MSMediaKeySession;
};