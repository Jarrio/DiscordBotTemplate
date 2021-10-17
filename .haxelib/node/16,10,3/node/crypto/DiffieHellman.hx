package node.crypto;

/**
	The `DiffieHellman` class is a utility for creating Diffie-Hellman key
	exchanges.
	
	Instances of the `DiffieHellman` class can be created using the {@link createDiffieHellman} function.
	
	```js
	import assert from 'assert';
	
	const {
	   createDiffieHellman
	} = await import('crypto');
	
	// Generate Alice's keys...
	const alice = createDiffieHellman(2048);
	const aliceKey = alice.generateKeys();
	
	// Generate Bob's keys...
	const bob = createDiffieHellman(alice.getPrime(), alice.getGenerator());
	const bobKey = bob.generateKeys();
	
	// Exchange and generate the secret...
	const aliceSecret = alice.computeSecret(bobKey);
	const bobSecret = bob.computeSecret(aliceKey);
	
	// OK
	assert.strictEqual(aliceSecret.toString('hex'), bobSecret.toString('hex'));
	```
**/
@:jsRequire("crypto", "DiffieHellman") extern class DiffieHellman {
	private function new();
	/**
		Generates private and public Diffie-Hellman key values, and returns
		the public key in the specified `encoding`. This key should be
		transferred to the other party.
		If `encoding` is provided a string is returned; otherwise a `Buffer` is returned.
	**/
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function generateKeys():node.buffer.Buffer;
	/**
		Computes the shared secret using `otherPublicKey` as the other
		party's public key and returns the computed shared secret. The supplied
		key is interpreted using the specified `inputEncoding`, and secret is
		encoded using specified `outputEncoding`.
		If the `inputEncoding` is not
		provided, `otherPublicKey` is expected to be a `Buffer`,`TypedArray`, or `DataView`.
		
		If `outputEncoding` is given a string is returned; otherwise, a `Buffer` is returned.
	**/
	@:overload(function(otherPublicKey:String, inputEncoding:BinaryToTextEncoding):node.buffer.Buffer { })
	@:overload(function(otherPublicKey:global.nodejs.ArrayBufferView, outputEncoding:BinaryToTextEncoding):String { })
	@:overload(function(otherPublicKey:String, inputEncoding:BinaryToTextEncoding, outputEncoding:BinaryToTextEncoding):String { })
	function computeSecret(otherPublicKey:global.nodejs.ArrayBufferView):node.buffer.Buffer;
	/**
		Returns the Diffie-Hellman prime in the specified `encoding`.
		If `encoding` is provided a string is
		returned; otherwise a `Buffer` is returned.
	**/
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function getPrime():node.buffer.Buffer;
	/**
		Returns the Diffie-Hellman generator in the specified `encoding`.
		If `encoding` is provided a string is
		returned; otherwise a `Buffer` is returned.
	**/
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function getGenerator():node.buffer.Buffer;
	/**
		Returns the Diffie-Hellman public key in the specified `encoding`.
		If `encoding` is provided a
		string is returned; otherwise a `Buffer` is returned.
	**/
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function getPublicKey():node.buffer.Buffer;
	/**
		Returns the Diffie-Hellman private key in the specified `encoding`.
		If `encoding` is provided a
		string is returned; otherwise a `Buffer` is returned.
	**/
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function getPrivateKey():node.buffer.Buffer;
	/**
		Sets the Diffie-Hellman public key. If the `encoding` argument is provided,`publicKey` is expected
		to be a string. If no `encoding` is provided, `publicKey` is expected
		to be a `Buffer`, `TypedArray`, or `DataView`.
	**/
	@:overload(function(publicKey:String, encoding:global.BufferEncoding):Void { })
	function setPublicKey(publicKey:global.nodejs.ArrayBufferView):Void;
	/**
		Sets the Diffie-Hellman private key. If the `encoding` argument is provided,`privateKey` is expected
		to be a string. If no `encoding` is provided, `privateKey` is expected
		to be a `Buffer`, `TypedArray`, or `DataView`.
	**/
	@:overload(function(privateKey:String, encoding:global.BufferEncoding):Void { })
	function setPrivateKey(privateKey:global.nodejs.ArrayBufferView):Void;
	/**
		A bit field containing any warnings and/or errors resulting from a check
		performed during initialization of the `DiffieHellman` object.
		
		The following values are valid for this property (as defined in `constants`module):
		
		* `DH_CHECK_P_NOT_SAFE_PRIME`
		* `DH_CHECK_P_NOT_PRIME`
		* `DH_UNABLE_TO_CHECK_GENERATOR`
		* `DH_NOT_SUITABLE_GENERATOR`
	**/
	var verifyError : Float;
	static var prototype : DiffieHellman;
}