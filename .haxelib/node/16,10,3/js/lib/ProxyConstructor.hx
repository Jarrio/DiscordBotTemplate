package js.lib;

typedef ProxyConstructor = {
	function revocable<T>(target:T, handler:js.lib.Proxy.ProxyHandler<T>):{
		var proxy : T;
		dynamic function revoke():Void;
	};
};