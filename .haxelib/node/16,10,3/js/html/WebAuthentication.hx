package js.html;

@:native("WebAuthentication") extern class WebAuthentication {
	function new();
	function getAssertion(assertionChallenge:Null<ts.AnyOf11<js.lib.Int8Array, js.lib.ArrayBuffer, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>>, ?options:AssertionOptions):js.lib.Promise<WebAuthnAssertion>;
	@:overload(function(accountInformation:Account, cryptoParameters:Iterable<ScopedCredentialParameters>, attestationChallenge:Null<ts.AnyOf11<js.lib.Int8Array, js.lib.ArrayBuffer, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>>, ?options:ScopedCredentialOptions):js.lib.Promise<ScopedCredentialInfo> { })
	function makeCredential(accountInformation:Account, cryptoParameters:Array<ScopedCredentialParameters>, attestationChallenge:Null<ts.AnyOf11<js.lib.Int8Array, js.lib.ArrayBuffer, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>>, ?options:ScopedCredentialOptions):js.lib.Promise<ScopedCredentialInfo>;
	static var prototype : WebAuthentication;
}