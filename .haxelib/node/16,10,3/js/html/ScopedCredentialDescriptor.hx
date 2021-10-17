package js.html;

typedef ScopedCredentialDescriptor = {
	var id : Null<ts.AnyOf11<js.lib.Int8Array, js.lib.ArrayBuffer, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>>;
	@:optional
	var transports : Array<Transport>;
	var type : String;
};