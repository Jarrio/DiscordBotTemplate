package node;

@:jsRequire("node:crypto") @valueModuleOnly extern class NodeCrypto {
	/**
		Creates and returns a `Hash` object that can be used to generate hash digests
		using the given `algorithm`. Optional `options` argument controls stream
		behavior. For XOF hash functions such as `'shake256'`, the `outputLength` option
		can be used to specify the desired output length in bytes.
		
		The `algorithm` is dependent on the available algorithms supported by the
		version of OpenSSL on the platform. Examples are `'sha256'`, `'sha512'`, etc.
		On recent releases of OpenSSL, `openssl list -digest-algorithms`(`openssl list-message-digest-algorithms` for older versions of OpenSSL) will
		display the available digest algorithms.
		
		Example: generating the sha256 sum of a file
		
		```js
		import {
		   createReadStream
		} from 'fs';
		import { argv } from 'process';
		const {
		   createHash
		} = await import('crypto');
		
		const filename = argv[2];
		
		const hash = createHash('sha256');
		
		const input = createReadStream(filename);
		input.on('readable', () => {
		   // Only one element is going to be produced by the
		   // hash stream.
		   const data = input.read();
		   if (data)
		     hash.update(data);
		   else {
		     console.log(`${hash.digest('hex')} ${filename}`);
		   }
		});
		```
	**/
	static function createHash(algorithm:String, ?options:node.crypto.HashOptions):node.crypto.Hash;
	/**
		Creates and returns an `Hmac` object that uses the given `algorithm` and `key`.
		Optional `options` argument controls stream behavior.
		
		The `algorithm` is dependent on the available algorithms supported by the
		version of OpenSSL on the platform. Examples are `'sha256'`, `'sha512'`, etc.
		On recent releases of OpenSSL, `openssl list -digest-algorithms`(`openssl list-message-digest-algorithms` for older versions of OpenSSL) will
		display the available digest algorithms.
		
		The `key` is the HMAC key used to generate the cryptographic HMAC hash. If it is
		a `KeyObject`, its type must be `secret`.
		
		Example: generating the sha256 HMAC of a file
		
		```js
		import {
		   createReadStream
		} from 'fs';
		import { argv } from 'process';
		const {
		   createHmac
		} = await import('crypto');
		
		const filename = argv[2];
		
		const hmac = createHmac('sha256', 'a secret');
		
		const input = createReadStream(filename);
		input.on('readable', () => {
		   // Only one element is going to be produced by the
		   // hash stream.
		   const data = input.read();
		   if (data)
		     hmac.update(data);
		   else {
		     console.log(`${hmac.digest('hex')} ${filename}`);
		   }
		});
		```
	**/
	static function createHmac(algorithm:String, key:ts.AnyOf14<String, js.lib.Int8Array, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.BigInt64Array, js.lib.BigUint64Array, js.lib.DataView, node.crypto.KeyObject>, ?options:node.stream.TransformOptions):node.crypto.Hmac;
	/**
		Creates and returns a `Cipher` object that uses the given `algorithm` and`password`.
		
		The `options` argument controls stream behavior and is optional except when a
		cipher in CCM or OCB mode is used (e.g. `'aes-128-ccm'`). In that case, the`authTagLength` option is required and specifies the length of the
		authentication tag in bytes, see `CCM mode`. In GCM mode, the `authTagLength`option is not required but can be used to set the length of the authentication
		tag that will be returned by `getAuthTag()` and defaults to 16 bytes.
		
		The `algorithm` is dependent on OpenSSL, examples are `'aes192'`, etc. On
		recent OpenSSL releases, `openssl list -cipher-algorithms`(`openssl list-cipher-algorithms` for older versions of OpenSSL) will
		display the available cipher algorithms.
		
		The `password` is used to derive the cipher key and initialization vector (IV).
		The value must be either a `'latin1'` encoded string, a `Buffer`, a`TypedArray`, or a `DataView`.
		
		The implementation of `crypto.createCipher()` derives keys using the OpenSSL
		function [`EVP_BytesToKey`](https://www.openssl.org/docs/man1.1.0/crypto/EVP_BytesToKey.html) with the digest algorithm set to MD5, one
		iteration, and no salt. The lack of salt allows dictionary attacks as the same
		password always creates the same key. The low iteration count and
		non-cryptographically secure hash algorithm allow passwords to be tested very
		rapidly.
		
		In line with OpenSSL's recommendation to use a more modern algorithm instead of [`EVP_BytesToKey`](https://www.openssl.org/docs/man1.1.0/crypto/EVP_BytesToKey.html) it is recommended that
		developers derive a key and IV on
		their own using {@link scrypt} and to use {@link createCipheriv} to create the `Cipher` object. Users should not use ciphers with counter mode
		(e.g. CTR, GCM, or CCM) in `crypto.createCipher()`. A warning is emitted when
		they are used in order to avoid the risk of IV reuse that causes
		vulnerabilities. For the case when IV is reused in GCM, see [Nonce-Disrespecting Adversaries](https://github.com/nonce-disrespect/nonce-disrespect) for details.
	**/
	@:overload(function(algorithm:node.crypto.CipherGCMTypes, password:node.crypto.BinaryLike, ?options:node.crypto.CipherGCMOptions):node.crypto.CipherGCM { })
	@:overload(function(algorithm:String, password:node.crypto.BinaryLike, ?options:node.stream.TransformOptions):node.crypto.Cipher { })
	static function createCipher(algorithm:node.crypto.CipherCCMTypes, password:node.crypto.BinaryLike, options:node.crypto.CipherCCMOptions):node.crypto.CipherCCM;
	/**
		Creates and returns a `Cipher` object, with the given `algorithm`, `key` and
		initialization vector (`iv`).
		
		The `options` argument controls stream behavior and is optional except when a
		cipher in CCM or OCB mode is used (e.g. `'aes-128-ccm'`). In that case, the`authTagLength` option is required and specifies the length of the
		authentication tag in bytes, see `CCM mode`. In GCM mode, the `authTagLength`option is not required but can be used to set the length of the authentication
		tag that will be returned by `getAuthTag()` and defaults to 16 bytes.
		
		The `algorithm` is dependent on OpenSSL, examples are `'aes192'`, etc. On
		recent OpenSSL releases, `openssl list -cipher-algorithms`(`openssl list-cipher-algorithms` for older versions of OpenSSL) will
		display the available cipher algorithms.
		
		The `key` is the raw key used by the `algorithm` and `iv` is an [initialization vector](https://en.wikipedia.org/wiki/Initialization_vector). Both arguments must be `'utf8'` encoded
		strings,`Buffers`, `TypedArray`, or `DataView`s. The `key` may optionally be
		a `KeyObject` of type `secret`. If the cipher does not need
		an initialization vector, `iv` may be `null`.
		
		When passing strings for `key` or `iv`, please consider `caveats when using strings as inputs to cryptographic APIs`.
		
		Initialization vectors should be unpredictable and unique; ideally, they will be
		cryptographically random. They do not have to be secret: IVs are typically just
		added to ciphertext messages unencrypted. It may sound contradictory that
		something has to be unpredictable and unique, but does not have to be secret;
		remember that an attacker must not be able to predict ahead of time what a
		given IV will be.
	**/
	@:overload(function(algorithm:node.crypto.CipherGCMTypes, key:ts.AnyOf14<String, js.lib.Int8Array, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.BigInt64Array, js.lib.BigUint64Array, js.lib.DataView, node.crypto.KeyObject>, iv:Null<node.crypto.BinaryLike>, ?options:node.crypto.CipherGCMOptions):node.crypto.CipherGCM { })
	@:overload(function(algorithm:String, key:ts.AnyOf14<String, js.lib.Int8Array, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.BigInt64Array, js.lib.BigUint64Array, js.lib.DataView, node.crypto.KeyObject>, iv:Null<node.crypto.BinaryLike>, ?options:node.stream.TransformOptions):node.crypto.Cipher { })
	static function createCipheriv(algorithm:node.crypto.CipherCCMTypes, key:ts.AnyOf14<String, js.lib.Int8Array, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.BigInt64Array, js.lib.BigUint64Array, js.lib.DataView, node.crypto.KeyObject>, iv:Null<node.crypto.BinaryLike>, options:node.crypto.CipherCCMOptions):node.crypto.CipherCCM;
	/**
		Creates and returns a `Decipher` object that uses the given `algorithm` and`password` (key).
		
		The `options` argument controls stream behavior and is optional except when a
		cipher in CCM or OCB mode is used (e.g. `'aes-128-ccm'`). In that case, the`authTagLength` option is required and specifies the length of the
		authentication tag in bytes, see `CCM mode`.
		
		The implementation of `crypto.createDecipher()` derives keys using the OpenSSL
		function [`EVP_BytesToKey`](https://www.openssl.org/docs/man1.1.0/crypto/EVP_BytesToKey.html) with the digest algorithm set to MD5, one
		iteration, and no salt. The lack of salt allows dictionary attacks as the same
		password always creates the same key. The low iteration count and
		non-cryptographically secure hash algorithm allow passwords to be tested very
		rapidly.
		
		In line with OpenSSL's recommendation to use a more modern algorithm instead of [`EVP_BytesToKey`](https://www.openssl.org/docs/man1.1.0/crypto/EVP_BytesToKey.html) it is recommended that
		developers derive a key and IV on
		their own using {@link scrypt} and to use {@link createDecipheriv} to create the `Decipher` object.
	**/
	@:overload(function(algorithm:node.crypto.CipherGCMTypes, password:node.crypto.BinaryLike, ?options:node.crypto.CipherGCMOptions):node.crypto.DecipherGCM { })
	@:overload(function(algorithm:String, password:node.crypto.BinaryLike, ?options:node.stream.TransformOptions):node.crypto.Decipher { })
	static function createDecipher(algorithm:node.crypto.CipherCCMTypes, password:node.crypto.BinaryLike, options:node.crypto.CipherCCMOptions):node.crypto.DecipherCCM;
	/**
		Creates and returns a `Decipher` object that uses the given `algorithm`, `key`and initialization vector (`iv`).
		
		The `options` argument controls stream behavior and is optional except when a
		cipher in CCM or OCB mode is used (e.g. `'aes-128-ccm'`). In that case, the`authTagLength` option is required and specifies the length of the
		authentication tag in bytes, see `CCM mode`. In GCM mode, the `authTagLength`option is not required but can be used to restrict accepted authentication tags
		to those with the specified length.
		
		The `algorithm` is dependent on OpenSSL, examples are `'aes192'`, etc. On
		recent OpenSSL releases, `openssl list -cipher-algorithms`(`openssl list-cipher-algorithms` for older versions of OpenSSL) will
		display the available cipher algorithms.
		
		The `key` is the raw key used by the `algorithm` and `iv` is an [initialization vector](https://en.wikipedia.org/wiki/Initialization_vector). Both arguments must be `'utf8'` encoded
		strings,`Buffers`, `TypedArray`, or `DataView`s. The `key` may optionally be
		a `KeyObject` of type `secret`. If the cipher does not need
		an initialization vector, `iv` may be `null`.
		
		When passing strings for `key` or `iv`, please consider `caveats when using strings as inputs to cryptographic APIs`.
		
		Initialization vectors should be unpredictable and unique; ideally, they will be
		cryptographically random. They do not have to be secret: IVs are typically just
		added to ciphertext messages unencrypted. It may sound contradictory that
		something has to be unpredictable and unique, but does not have to be secret;
		remember that an attacker must not be able to predict ahead of time what a given
		IV will be.
	**/
	@:overload(function(algorithm:node.crypto.CipherGCMTypes, key:ts.AnyOf14<String, js.lib.Int8Array, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.BigInt64Array, js.lib.BigUint64Array, js.lib.DataView, node.crypto.KeyObject>, iv:Null<node.crypto.BinaryLike>, ?options:node.crypto.CipherGCMOptions):node.crypto.DecipherGCM { })
	@:overload(function(algorithm:String, key:ts.AnyOf14<String, js.lib.Int8Array, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.BigInt64Array, js.lib.BigUint64Array, js.lib.DataView, node.crypto.KeyObject>, iv:Null<node.crypto.BinaryLike>, ?options:node.stream.TransformOptions):node.crypto.Decipher { })
	static function createDecipheriv(algorithm:node.crypto.CipherCCMTypes, key:ts.AnyOf14<String, js.lib.Int8Array, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.BigInt64Array, js.lib.BigUint64Array, js.lib.DataView, node.crypto.KeyObject>, iv:Null<node.crypto.BinaryLike>, options:node.crypto.CipherCCMOptions):node.crypto.DecipherCCM;
	/**
		Asynchronously generates a new random secret key of the given `length`. The`type` will determine which validations will be performed on the `length`.
		
		```js
		const {
		   generateKey
		} = await import('crypto');
		
		generateKey('hmac', { length: 64 }, (err, key) => {
		   if (err) throw err;
		   console.log(key.export().toString('hex'));  // 46e..........620
		});
		```
	**/
	static function generateKey(type:String, options:{ var length : Float; }, callback:(err:Null<js.lib.Error>, key:node.crypto.KeyObject) -> Void):Void;
	/**
		Synchronously generates a new random secret key of the given `length`. The`type` will determine which validations will be performed on the `length`.
		
		```js
		const {
		   generateKeySync
		} = await import('crypto');
		
		const key = generateKeySync('hmac', 64);
		console.log(key.export().toString('hex'));  // e89..........41e
		```
	**/
	static function generateKeySync(type:String, options:{ var length : Float; }):node.crypto.KeyObject;
	/**
		Creates and returns a new key object containing a private key. If `key` is a
		string or `Buffer`, `format` is assumed to be `'pem'`; otherwise, `key`must be an object with the properties described above.
		
		If the private key is encrypted, a `passphrase` must be specified. The length
		of the passphrase is limited to 1024 bytes.
	**/
	static function createPrivateKey(key:ts.AnyOf4<String, node.buffer.Buffer, node.crypto.PrivateKeyInput, node.crypto.JsonWebKeyInput>):node.crypto.KeyObject;
	/**
		Creates and returns a new key object containing a public key. If `key` is a
		string or `Buffer`, `format` is assumed to be `'pem'`; if `key` is a `KeyObject`with type `'private'`, the public key is derived from the given private key;
		otherwise, `key` must be an object with the properties described above.
		
		If the format is `'pem'`, the `'key'` may also be an X.509 certificate.
		
		Because public keys can be derived from private keys, a private key may be
		passed instead of a public key. In that case, this function behaves as if {@link createPrivateKey} had been called, except that the type of the
		returned `KeyObject` will be `'public'` and that the private key cannot be
		extracted from the returned `KeyObject`. Similarly, if a `KeyObject` with type`'private'` is given, a new `KeyObject` with type `'public'` will be returned
		and it will be impossible to extract the private key from the returned object.
	**/
	static function createPublicKey(key:ts.AnyOf5<String, node.buffer.Buffer, node.crypto.KeyObject, node.crypto.JsonWebKeyInput, node.crypto.PublicKeyInput>):node.crypto.KeyObject;
	/**
		Creates and returns a new key object containing a secret key for symmetric
		encryption or `Hmac`.
	**/
	@:overload(function(key:String, encoding:global.BufferEncoding):node.crypto.KeyObject { })
	static function createSecretKey(key:global.nodejs.ArrayBufferView):node.crypto.KeyObject;
	/**
		Creates and returns a `Sign` object that uses the given `algorithm`. Use {@link getHashes} to obtain the names of the available digest algorithms.
		Optional `options` argument controls the `stream.Writable` behavior.
		
		In some cases, a `Sign` instance can be created using the name of a signature
		algorithm, such as `'RSA-SHA256'`, instead of a digest algorithm. This will use
		the corresponding digest algorithm. This does not work for all signature
		algorithms, such as `'ecdsa-with-SHA256'`, so it is best to always use digest
		algorithm names.
	**/
	static function createSign(algorithm:String, ?options:node.stream.WritableOptions):node.crypto.Sign;
	/**
		Creates and returns a `Verify` object that uses the given algorithm.
		Use {@link getHashes} to obtain an array of names of the available
		signing algorithms. Optional `options` argument controls the`stream.Writable` behavior.
		
		In some cases, a `Verify` instance can be created using the name of a signature
		algorithm, such as `'RSA-SHA256'`, instead of a digest algorithm. This will use
		the corresponding digest algorithm. This does not work for all signature
		algorithms, such as `'ecdsa-with-SHA256'`, so it is best to always use digest
		algorithm names.
	**/
	static function createVerify(algorithm:String, ?options:node.stream.WritableOptions):node.crypto.Verify;
	/**
		Creates a `DiffieHellman` key exchange object using the supplied `prime` and an
		optional specific `generator`.
		
		The `generator` argument can be a number, string, or `Buffer`. If`generator` is not specified, the value `2` is used.
		
		If `primeEncoding` is specified, `prime` is expected to be a string; otherwise
		a `Buffer`, `TypedArray`, or `DataView` is expected.
		
		If `generatorEncoding` is specified, `generator` is expected to be a string;
		otherwise a number, `Buffer`, `TypedArray`, or `DataView` is expected.
	**/
	@:overload(function(prime:global.nodejs.ArrayBufferView):node.crypto.DiffieHellman { })
	@:overload(function(prime:String, primeEncoding:node.crypto.BinaryToTextEncoding):node.crypto.DiffieHellman { })
	@:overload(function(prime:String, primeEncoding:node.crypto.BinaryToTextEncoding, generator:ts.AnyOf13<Float, js.lib.Int8Array, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.BigInt64Array, js.lib.BigUint64Array, js.lib.DataView>):node.crypto.DiffieHellman { })
	@:overload(function(prime:String, primeEncoding:node.crypto.BinaryToTextEncoding, generator:String, generatorEncoding:node.crypto.BinaryToTextEncoding):node.crypto.DiffieHellman { })
	static function createDiffieHellman(primeLength:Float, ?generator:ts.AnyOf13<Float, js.lib.Int8Array, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.BigInt64Array, js.lib.BigUint64Array, js.lib.DataView>):node.crypto.DiffieHellman;
	/**
		Creates a predefined `DiffieHellmanGroup` key exchange object. The
		supported groups are: `'modp1'`, `'modp2'`, `'modp5'` (defined in [RFC 2412](https://www.rfc-editor.org/rfc/rfc2412.txt), but see `Caveats`) and `'modp14'`, `'modp15'`,`'modp16'`, `'modp17'`,
		`'modp18'` (defined in [RFC 3526](https://www.rfc-editor.org/rfc/rfc3526.txt)). The
		returned object mimics the interface of objects created by {@link createDiffieHellman}, but will not allow changing
		the keys (with `diffieHellman.setPublicKey()`, for example). The
		advantage of using this method is that the parties do not have to
		generate nor exchange a group modulus beforehand, saving both processor
		and communication time.
		
		Example (obtaining a shared secret):
		
		```js
		const {
		   getDiffieHellman
		} = await import('crypto');
		const alice = getDiffieHellman('modp14');
		const bob = getDiffieHellman('modp14');
		
		alice.generateKeys();
		bob.generateKeys();
		
		const aliceSecret = alice.computeSecret(bob.getPublicKey(), null, 'hex');
		const bobSecret = bob.computeSecret(alice.getPublicKey(), null, 'hex');
		
		// aliceSecret and bobSecret should be the same
		console.log(aliceSecret === bobSecret);
		```
	**/
	static function getDiffieHellman(groupName:String):node.crypto.DiffieHellman;
	/**
		Provides an asynchronous Password-Based Key Derivation Function 2 (PBKDF2)
		implementation. A selected HMAC digest algorithm specified by `digest` is
		applied to derive a key of the requested byte length (`keylen`) from the`password`, `salt` and `iterations`.
		
		The supplied `callback` function is called with two arguments: `err` and`derivedKey`. If an error occurs while deriving the key, `err` will be set;
		otherwise `err` will be `null`. By default, the successfully generated`derivedKey` will be passed to the callback as a `Buffer`. An error will be
		thrown if any of the input arguments specify invalid values or types.
		
		If `digest` is `null`, `'sha1'` will be used. This behavior is deprecated,
		please specify a `digest` explicitly.
		
		The `iterations` argument must be a number set as high as possible. The
		higher the number of iterations, the more secure the derived key will be,
		but will take a longer amount of time to complete.
		
		The `salt` should be as unique as possible. It is recommended that a salt is
		random and at least 16 bytes long. See [NIST SP 800-132](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-132.pdf) for details.
		
		When passing strings for `password` or `salt`, please consider `caveats when using strings as inputs to cryptographic APIs`.
		
		```js
		const {
		   pbkdf2
		} = await import('crypto');
		
		pbkdf2('secret', 'salt', 100000, 64, 'sha512', (err, derivedKey) => {
		   if (err) throw err;
		   console.log(derivedKey.toString('hex'));  // '3745e48...08d59ae'
		});
		```
		
		The `crypto.DEFAULT_ENCODING` property can be used to change the way the`derivedKey` is passed to the callback. This property, however, has been
		deprecated and use should be avoided.
		
		```js
		import crypto from 'crypto';
		crypto.DEFAULT_ENCODING = 'hex';
		crypto.pbkdf2('secret', 'salt', 100000, 512, 'sha512', (err, derivedKey) => {
		   if (err) throw err;
		   console.log(derivedKey);  // '3745e48...aa39b34'
		});
		```
		
		An array of supported digest functions can be retrieved using {@link getHashes}.
		
		This API uses libuv's threadpool, which can have surprising and
		negative performance implications for some applications; see the `UV_THREADPOOL_SIZE` documentation for more information.
	**/
	static function pbkdf2(password:node.crypto.BinaryLike, salt:node.crypto.BinaryLike, iterations:Float, keylen:Float, digest:String, callback:(err:Null<js.lib.Error>, derivedKey:node.buffer.Buffer) -> Void):Void;
	/**
		Provides a synchronous Password-Based Key Derivation Function 2 (PBKDF2)
		implementation. A selected HMAC digest algorithm specified by `digest` is
		applied to derive a key of the requested byte length (`keylen`) from the`password`, `salt` and `iterations`.
		
		If an error occurs an `Error` will be thrown, otherwise the derived key will be
		returned as a `Buffer`.
		
		If `digest` is `null`, `'sha1'` will be used. This behavior is deprecated,
		please specify a `digest` explicitly.
		
		The `iterations` argument must be a number set as high as possible. The
		higher the number of iterations, the more secure the derived key will be,
		but will take a longer amount of time to complete.
		
		The `salt` should be as unique as possible. It is recommended that a salt is
		random and at least 16 bytes long. See [NIST SP 800-132](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-132.pdf) for details.
		
		When passing strings for `password` or `salt`, please consider `caveats when using strings as inputs to cryptographic APIs`.
		
		```js
		const {
		   pbkdf2Sync
		} = await import('crypto');
		
		const key = pbkdf2Sync('secret', 'salt', 100000, 64, 'sha512');
		console.log(key.toString('hex'));  // '3745e48...08d59ae'
		```
		
		The `crypto.DEFAULT_ENCODING` property may be used to change the way the`derivedKey` is returned. This property, however, is deprecated and use
		should be avoided.
		
		```js
		import crypto from 'crypto';
		crypto.DEFAULT_ENCODING = 'hex';
		const key = crypto.pbkdf2Sync('secret', 'salt', 100000, 512, 'sha512');
		console.log(key);  // '3745e48...aa39b34'
		```
		
		An array of supported digest functions can be retrieved using {@link getHashes}.
	**/
	static function pbkdf2Sync(password:node.crypto.BinaryLike, salt:node.crypto.BinaryLike, iterations:Float, keylen:Float, digest:String):node.buffer.Buffer;
	/**
		Generates cryptographically strong pseudorandom data. The `size` argument
		is a number indicating the number of bytes to generate.
		
		If a `callback` function is provided, the bytes are generated asynchronously
		and the `callback` function is invoked with two arguments: `err` and `buf`.
		If an error occurs, `err` will be an `Error` object; otherwise it is `null`. The`buf` argument is a `Buffer` containing the generated bytes.
		
		```js
		// Asynchronous
		const {
		   randomBytes
		} = await import('crypto');
		
		randomBytes(256, (err, buf) => {
		   if (err) throw err;
		   console.log(`${buf.length} bytes of random data: ${buf.toString('hex')}`);
		});
		```
		
		If the `callback` function is not provided, the random bytes are generated
		synchronously and returned as a `Buffer`. An error will be thrown if
		there is a problem generating the bytes.
		
		```js
		// Synchronous
		const {
		   randomBytes
		} = await import('crypto');
		
		const buf = randomBytes(256);
		console.log(
		   `${buf.length} bytes of random data: ${buf.toString('hex')}`);
		```
		
		The `crypto.randomBytes()` method will not complete until there is
		sufficient entropy available.
		This should normally never take longer than a few milliseconds. The only time
		when generating the random bytes may conceivably block for a longer period of
		time is right after boot, when the whole system is still low on entropy.
		
		This API uses libuv's threadpool, which can have surprising and
		negative performance implications for some applications; see the `UV_THREADPOOL_SIZE` documentation for more information.
		
		The asynchronous version of `crypto.randomBytes()` is carried out in a single
		threadpool request. To minimize threadpool task length variation, partition
		large `randomBytes` requests when doing so as part of fulfilling a client
		request.
	**/
	@:overload(function(size:Float, callback:(err:Null<js.lib.Error>, buf:node.buffer.Buffer) -> Void):Void { })
	static function randomBytes(size:Float):node.buffer.Buffer;
	@:overload(function(size:Float, callback:(err:Null<js.lib.Error>, buf:node.buffer.Buffer) -> Void):Void { })
	static function pseudoRandomBytes(size:Float):node.buffer.Buffer;
	/**
		Return a random integer `n` such that `min <= n < max`.  This
		implementation avoids [modulo bias](https://en.wikipedia.org/wiki/Fisher%E2%80%93Yates_shuffle#Modulo_bias).
		
		The range (`max - min`) must be less than 248. `min` and `max` must
		be [safe integers](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/isSafeInteger).
		
		If the `callback` function is not provided, the random integer is
		generated synchronously.
		
		```js
		// Asynchronous
		const {
		   randomInt
		} = await import('crypto');
		
		randomInt(3, (err, n) => {
		   if (err) throw err;
		   console.log(`Random number chosen from (0, 1, 2): ${n}`);
		});
		```
		
		```js
		// Synchronous
		const {
		   randomInt
		} = await import('crypto');
		
		const n = randomInt(3);
		console.log(`Random number chosen from (0, 1, 2): ${n}`);
		```
		
		```js
		// With `min` argument
		const {
		   randomInt
		} = await import('crypto');
		
		const n = randomInt(1, 7);
		console.log(`The dice rolled: ${n}`);
		```
	**/
	@:overload(function(min:Float, max:Float):Float { })
	@:overload(function(max:Float, callback:(err:Null<js.lib.Error>, value:Float) -> Void):Void { })
	@:overload(function(min:Float, max:Float, callback:(err:Null<js.lib.Error>, value:Float) -> Void):Void { })
	static function randomInt(max:Float):Float;
	/**
		Synchronous version of {@link randomFill}.
		
		```js
		import { Buffer } from 'buffer';
		const { randomFillSync } = await import('crypto');
		
		const buf = Buffer.alloc(10);
		console.log(randomFillSync(buf).toString('hex'));
		
		randomFillSync(buf, 5);
		console.log(buf.toString('hex'));
		
		// The above is equivalent to the following:
		randomFillSync(buf, 5, 5);
		console.log(buf.toString('hex'));
		```
		
		Any `ArrayBuffer`, `TypedArray` or `DataView` instance may be passed as`buffer`.
		
		```js
		import { Buffer } from 'buffer';
		const { randomFillSync } = await import('crypto');
		
		const a = new Uint32Array(10);
		console.log(Buffer.from(randomFillSync(a).buffer,
		                         a.byteOffset, a.byteLength).toString('hex'));
		
		const b = new DataView(new ArrayBuffer(10));
		console.log(Buffer.from(randomFillSync(b).buffer,
		                         b.byteOffset, b.byteLength).toString('hex'));
		
		const c = new ArrayBuffer(10);
		console.log(Buffer.from(randomFillSync(c)).toString('hex'));
		```
	**/
	static function randomFillSync<T>(buffer:T, ?offset:Float, ?size:Float):T;
	/**
		This function is similar to {@link randomBytes} but requires the first
		argument to be a `Buffer` that will be filled. It also
		requires that a callback is passed in.
		
		If the `callback` function is not provided, an error will be thrown.
		
		```js
		import { Buffer } from 'buffer';
		const { randomFill } = await import('crypto');
		
		const buf = Buffer.alloc(10);
		randomFill(buf, (err, buf) => {
		   if (err) throw err;
		   console.log(buf.toString('hex'));
		});
		
		randomFill(buf, 5, (err, buf) => {
		   if (err) throw err;
		   console.log(buf.toString('hex'));
		});
		
		// The above is equivalent to the following:
		randomFill(buf, 5, 5, (err, buf) => {
		   if (err) throw err;
		   console.log(buf.toString('hex'));
		});
		```
		
		Any `ArrayBuffer`, `TypedArray`, or `DataView` instance may be passed as`buffer`.
		
		While this includes instances of `Float32Array` and `Float64Array`, this
		function should not be used to generate random floating-point numbers. The
		result may contain `+Infinity`, `-Infinity`, and `NaN`, and even if the array
		contains finite numbers only, they are not drawn from a uniform random
		distribution and have no meaningful lower or upper bounds.
		
		```js
		import { Buffer } from 'buffer';
		const { randomFill } = await import('crypto');
		
		const a = new Uint32Array(10);
		randomFill(a, (err, buf) => {
		   if (err) throw err;
		   console.log(Buffer.from(buf.buffer, buf.byteOffset, buf.byteLength)
		     .toString('hex'));
		});
		
		const b = new DataView(new ArrayBuffer(10));
		randomFill(b, (err, buf) => {
		   if (err) throw err;
		   console.log(Buffer.from(buf.buffer, buf.byteOffset, buf.byteLength)
		     .toString('hex'));
		});
		
		const c = new ArrayBuffer(10);
		randomFill(c, (err, buf) => {
		   if (err) throw err;
		   console.log(Buffer.from(buf).toString('hex'));
		});
		```
		
		This API uses libuv's threadpool, which can have surprising and
		negative performance implications for some applications; see the `UV_THREADPOOL_SIZE` documentation for more information.
		
		The asynchronous version of `crypto.randomFill()` is carried out in a single
		threadpool request. To minimize threadpool task length variation, partition
		large `randomFill` requests when doing so as part of fulfilling a client
		request.
	**/
	@:overload(function<T>(buffer:T, offset:Float, callback:(err:Null<js.lib.Error>, buf:T) -> Void):Void { })
	@:overload(function<T>(buffer:T, offset:Float, size:Float, callback:(err:Null<js.lib.Error>, buf:T) -> Void):Void { })
	static function randomFill<T>(buffer:T, callback:(err:Null<js.lib.Error>, buf:T) -> Void):Void;
	/**
		Provides an asynchronous [scrypt](https://en.wikipedia.org/wiki/Scrypt) implementation. Scrypt is a password-based
		key derivation function that is designed to be expensive computationally and
		memory-wise in order to make brute-force attacks unrewarding.
		
		The `salt` should be as unique as possible. It is recommended that a salt is
		random and at least 16 bytes long. See [NIST SP 800-132](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-132.pdf) for details.
		
		When passing strings for `password` or `salt`, please consider `caveats when using strings as inputs to cryptographic APIs`.
		
		The `callback` function is called with two arguments: `err` and `derivedKey`.`err` is an exception object when key derivation fails, otherwise `err` is`null`. `derivedKey` is passed to the
		callback as a `Buffer`.
		
		An exception is thrown when any of the input arguments specify invalid values
		or types.
		
		```js
		const {
		   scrypt
		} = await import('crypto');
		
		// Using the factory defaults.
		scrypt('password', 'salt', 64, (err, derivedKey) => {
		   if (err) throw err;
		   console.log(derivedKey.toString('hex'));  // '3745e48...08d59ae'
		});
		// Using a custom N parameter. Must be a power of two.
		scrypt('password', 'salt', 64, { N: 1024 }, (err, derivedKey) => {
		   if (err) throw err;
		   console.log(derivedKey.toString('hex'));  // '3745e48...aa39b34'
		});
		```
	**/
	@:overload(function(password:node.crypto.BinaryLike, salt:node.crypto.BinaryLike, keylen:Float, options:node.crypto.ScryptOptions, callback:(err:Null<js.lib.Error>, derivedKey:node.buffer.Buffer) -> Void):Void { })
	static function scrypt(password:node.crypto.BinaryLike, salt:node.crypto.BinaryLike, keylen:Float, callback:(err:Null<js.lib.Error>, derivedKey:node.buffer.Buffer) -> Void):Void;
	/**
		Provides a synchronous [scrypt](https://en.wikipedia.org/wiki/Scrypt) implementation. Scrypt is a password-based
		key derivation function that is designed to be expensive computationally and
		memory-wise in order to make brute-force attacks unrewarding.
		
		The `salt` should be as unique as possible. It is recommended that a salt is
		random and at least 16 bytes long. See [NIST SP 800-132](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-132.pdf) for details.
		
		When passing strings for `password` or `salt`, please consider `caveats when using strings as inputs to cryptographic APIs`.
		
		An exception is thrown when key derivation fails, otherwise the derived key is
		returned as a `Buffer`.
		
		An exception is thrown when any of the input arguments specify invalid values
		or types.
		
		```js
		const {
		   scryptSync
		} = await import('crypto');
		// Using the factory defaults.
		
		const key1 = scryptSync('password', 'salt', 64);
		console.log(key1.toString('hex'));  // '3745e48...08d59ae'
		// Using a custom N parameter. Must be a power of two.
		const key2 = scryptSync('password', 'salt', 64, { N: 1024 });
		console.log(key2.toString('hex'));  // '3745e48...aa39b34'
		```
	**/
	static function scryptSync(password:node.crypto.BinaryLike, salt:node.crypto.BinaryLike, keylen:Float, ?options:node.crypto.ScryptOptions):node.buffer.Buffer;
	/**
		Encrypts the content of `buffer` with `key` and returns a new `Buffer` with encrypted content. The returned data can be decrypted using
		the corresponding private key, for example using {@link privateDecrypt}.
		
		If `key` is not a `KeyObject`, this function behaves as if`key` had been passed to {@link createPublicKey}. If it is an
		object, the `padding` property can be passed. Otherwise, this function uses`RSA_PKCS1_OAEP_PADDING`.
		
		Because RSA public keys can be derived from private keys, a private key may
		be passed instead of a public key.
	**/
	static function publicEncrypt(key:ts.AnyOf5<String, node.buffer.Buffer, node.crypto.KeyObject, node.crypto.RsaPublicKey, node.crypto.RsaPrivateKey>, buffer:global.nodejs.ArrayBufferView):node.buffer.Buffer;
	/**
		Decrypts `buffer` with `key`.`buffer` was previously encrypted using
		the corresponding private key, for example using {@link privateEncrypt}.
		
		If `key` is not a `KeyObject`, this function behaves as if`key` had been passed to {@link createPublicKey}. If it is an
		object, the `padding` property can be passed. Otherwise, this function uses`RSA_PKCS1_PADDING`.
		
		Because RSA public keys can be derived from private keys, a private key may
		be passed instead of a public key.
	**/
	static function publicDecrypt(key:ts.AnyOf5<String, node.buffer.Buffer, node.crypto.KeyObject, node.crypto.RsaPublicKey, node.crypto.RsaPrivateKey>, buffer:global.nodejs.ArrayBufferView):node.buffer.Buffer;
	/**
		Decrypts `buffer` with `privateKey`. `buffer` was previously encrypted using
		the corresponding public key, for example using {@link publicEncrypt}.
		
		If `privateKey` is not a `KeyObject`, this function behaves as if`privateKey` had been passed to {@link createPrivateKey}. If it is an
		object, the `padding` property can be passed. Otherwise, this function uses`RSA_PKCS1_OAEP_PADDING`.
	**/
	static function privateDecrypt(privateKey:ts.AnyOf4<String, node.buffer.Buffer, node.crypto.KeyObject, node.crypto.RsaPrivateKey>, buffer:global.nodejs.ArrayBufferView):node.buffer.Buffer;
	/**
		Encrypts `buffer` with `privateKey`. The returned data can be decrypted using
		the corresponding public key, for example using {@link publicDecrypt}.
		
		If `privateKey` is not a `KeyObject`, this function behaves as if`privateKey` had been passed to {@link createPrivateKey}. If it is an
		object, the `padding` property can be passed. Otherwise, this function uses`RSA_PKCS1_PADDING`.
	**/
	static function privateEncrypt(privateKey:ts.AnyOf4<String, node.buffer.Buffer, node.crypto.KeyObject, node.crypto.RsaPrivateKey>, buffer:global.nodejs.ArrayBufferView):node.buffer.Buffer;
	/**
		```js
		const {
		   getCiphers
		} = await import('crypto');
		
		console.log(getCiphers()); // ['aes-128-cbc', 'aes-128-ccm', ...]
		```
	**/
	static function getCiphers():Array<String>;
	/**
		```js
		const {
		   getCurves
		} = await import('crypto');
		
		console.log(getCurves()); // ['Oakley-EC2N-3', 'Oakley-EC2N-4', ...]
		```
	**/
	static function getCurves():Array<String>;
	static function getFips():Int;
	/**
		```js
		const {
		   getHashes
		} = await import('crypto');
		
		console.log(getHashes()); // ['DSA', 'DSA-SHA', 'DSA-SHA1', ...]
		```
	**/
	static function getHashes():Array<String>;
	/**
		Creates an Elliptic Curve Diffie-Hellman (`ECDH`) key exchange object using a
		predefined curve specified by the `curveName` string. Use {@link getCurves} to obtain a list of available curve names. On recent
		OpenSSL releases, `openssl ecparam -list_curves` will also display the name
		and description of each available elliptic curve.
	**/
	static function createECDH(curveName:String):node.crypto.ECDH;
	/**
		This function is based on a constant-time algorithm.
		Returns true if `a` is equal to `b`, without leaking timing information that
		would allow an attacker to guess one of the values. This is suitable for
		comparing HMAC digests or secret values like authentication cookies or [capability urls](https://www.w3.org/TR/capability-urls/).
		
		`a` and `b` must both be `Buffer`s, `TypedArray`s, or `DataView`s, and they
		must have the same byte length.
		
		If at least one of `a` and `b` is a `TypedArray` with more than one byte per
		entry, such as `Uint16Array`, the result will be computed using the platform
		byte order.
		
		Use of `crypto.timingSafeEqual` does not guarantee that the _surrounding_ code
		is timing-safe. Care should be taken to ensure that the surrounding code does
		not introduce timing vulnerabilities.
	**/
	static function timingSafeEqual(a:global.nodejs.ArrayBufferView, b:global.nodejs.ArrayBufferView):Bool;
	/**
		Generates a new asymmetric key pair of the given `type`. RSA, RSA-PSS, DSA, EC,
		Ed25519, Ed448, X25519, X448, and DH are currently supported.
		
		If a `publicKeyEncoding` or `privateKeyEncoding` was specified, this function
		behaves as if `keyObject.export()` had been called on its result. Otherwise,
		the respective part of the key is returned as a `KeyObject`.
		
		When encoding public keys, it is recommended to use `'spki'`. When encoding
		private keys, it is recommended to use `'pkcs8'` with a strong passphrase,
		and to keep the passphrase confidential.
		
		```js
		const {
		   generateKeyPairSync
		} = await import('crypto');
		
		const {
		   publicKey,
		   privateKey,
		} = generateKeyPairSync('rsa', {
		   modulusLength: 4096,
		   publicKeyEncoding: {
		     type: 'spki',
		     format: 'pem'
		   },
		   privateKeyEncoding: {
		     type: 'pkcs8',
		     format: 'pem',
		     cipher: 'aes-256-cbc',
		     passphrase: 'top secret'
		   }
		});
		```
		
		The return value `{ publicKey, privateKey }` represents the generated key pair.
		When PEM encoding was selected, the respective key will be a string, otherwise
		it will be a buffer containing the data encoded as DER.
	**/
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, node.buffer.Buffer> { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<node.buffer.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<node.buffer.Buffer, node.buffer.Buffer> { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	@:overload(function(type:String, options:node.crypto.RSAPSSKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String> { })
	@:overload(function(type:String, options:node.crypto.RSAPSSKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, node.buffer.Buffer> { })
	@:overload(function(type:String, options:node.crypto.RSAPSSKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<node.buffer.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.RSAPSSKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<node.buffer.Buffer, node.buffer.Buffer> { })
	@:overload(function(type:String, options:node.crypto.RSAPSSKeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String> { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, node.buffer.Buffer> { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<node.buffer.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<node.buffer.Buffer, node.buffer.Buffer> { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String> { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, node.buffer.Buffer> { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<node.buffer.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<node.buffer.Buffer, node.buffer.Buffer> { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	@:overload(function(type:String, options:node.crypto.ED25519KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String> { })
	@:overload(function(type:String, options:node.crypto.ED25519KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, node.buffer.Buffer> { })
	@:overload(function(type:String, options:node.crypto.ED25519KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<node.buffer.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.ED25519KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<node.buffer.Buffer, node.buffer.Buffer> { })
	@:overload(function(type:String, ?options:node.crypto.ED25519KeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	@:overload(function(type:String, options:node.crypto.ED448KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String> { })
	@:overload(function(type:String, options:node.crypto.ED448KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, node.buffer.Buffer> { })
	@:overload(function(type:String, options:node.crypto.ED448KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<node.buffer.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.ED448KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<node.buffer.Buffer, node.buffer.Buffer> { })
	@:overload(function(type:String, ?options:node.crypto.ED448KeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	@:overload(function(type:String, options:node.crypto.X25519KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String> { })
	@:overload(function(type:String, options:node.crypto.X25519KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, node.buffer.Buffer> { })
	@:overload(function(type:String, options:node.crypto.X25519KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<node.buffer.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.X25519KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<node.buffer.Buffer, node.buffer.Buffer> { })
	@:overload(function(type:String, ?options:node.crypto.X25519KeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	@:overload(function(type:String, options:node.crypto.X448KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String> { })
	@:overload(function(type:String, options:node.crypto.X448KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, node.buffer.Buffer> { })
	@:overload(function(type:String, options:node.crypto.X448KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<node.buffer.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.X448KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<node.buffer.Buffer, node.buffer.Buffer> { })
	@:overload(function(type:String, ?options:node.crypto.X448KeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	static function generateKeyPairSync(type:String, options:node.crypto.RSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String>;
	/**
		Generates a new asymmetric key pair of the given `type`. RSA, RSA-PSS, DSA, EC,
		Ed25519, Ed448, X25519, X448, and DH are currently supported.
		
		If a `publicKeyEncoding` or `privateKeyEncoding` was specified, this function
		behaves as if `keyObject.export()` had been called on its result. Otherwise,
		the respective part of the key is returned as a `KeyObject`.
		
		It is recommended to encode public keys as `'spki'` and private keys as`'pkcs8'` with encryption for long-term storage:
		
		```js
		const {
		   generateKeyPair
		} = await import('crypto');
		
		generateKeyPair('rsa', {
		   modulusLength: 4096,
		   publicKeyEncoding: {
		     type: 'spki',
		     format: 'pem'
		   },
		   privateKeyEncoding: {
		     type: 'pkcs8',
		     format: 'pem',
		     cipher: 'aes-256-cbc',
		     passphrase: 'top secret'
		   }
		}, (err, publicKey, privateKey) => {
		   // Handle errors and use the generated key pair.
		});
		```
		
		On completion, `callback` will be called with `err` set to `undefined` and`publicKey` / `privateKey` representing the generated key pair.
		
		If this method is invoked as its `util.promisify()` ed version, it returns
		a `Promise` for an `Object` with `publicKey` and `privateKey` properties.
	**/
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:node.buffer.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.Buffer, privateKey:node.buffer.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.RSAPSSKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.RSAPSSKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:node.buffer.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.RSAPSSKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.RSAPSSKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.Buffer, privateKey:node.buffer.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.RSAPSSKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:node.buffer.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.Buffer, privateKey:node.buffer.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:node.buffer.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.Buffer, privateKey:node.buffer.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ED25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ED25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:node.buffer.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ED25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ED25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.Buffer, privateKey:node.buffer.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:Null<node.crypto.ED25519KeyPairKeyObjectOptions>, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ED448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ED448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:node.buffer.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ED448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ED448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.Buffer, privateKey:node.buffer.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:Null<node.crypto.ED448KeyPairKeyObjectOptions>, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.X25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.X25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:node.buffer.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.X25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.X25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.Buffer, privateKey:node.buffer.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:Null<node.crypto.X25519KeyPairKeyObjectOptions>, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.X448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.X448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:node.buffer.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.X448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.X448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:node.buffer.Buffer, privateKey:node.buffer.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:Null<node.crypto.X448KeyPairKeyObjectOptions>, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	static function generateKeyPair(type:String, options:node.crypto.RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void;
	/**
		Calculates and returns the signature for `data` using the given private key and
		algorithm. If `algorithm` is `null` or `undefined`, then the algorithm is
		dependent upon the key type (especially Ed25519 and Ed448).
		
		If `key` is not a `KeyObject`, this function behaves as if `key` had been
		passed to {@link createPrivateKey}. If it is an object, the following
		additional properties can be passed:
		
		If the `callback` function is provided this function uses libuv's threadpool.
	**/
	@:overload(function(algorithm:Null<String>, data:global.nodejs.ArrayBufferView, key:ts.AnyOf5<String, node.buffer.Buffer, node.crypto.KeyObject, node.crypto.SignKeyObjectInput, node.crypto.SignPrivateKeyInput>, callback:(error:Null<js.lib.Error>, data:node.buffer.Buffer) -> Void):Void { })
	static function sign(algorithm:Null<String>, data:global.nodejs.ArrayBufferView, key:ts.AnyOf5<String, node.buffer.Buffer, node.crypto.KeyObject, node.crypto.SignKeyObjectInput, node.crypto.SignPrivateKeyInput>):node.buffer.Buffer;
	/**
		Verifies the given signature for `data` using the given key and algorithm. If`algorithm` is `null` or `undefined`, then the algorithm is dependent upon the
		key type (especially Ed25519 and Ed448).
		
		If `key` is not a `KeyObject`, this function behaves as if `key` had been
		passed to {@link createPublicKey}. If it is an object, the following
		additional properties can be passed:
		
		The `signature` argument is the previously calculated signature for the `data`.
		
		Because public keys can be derived from private keys, a private key or a public
		key may be passed for `key`.
		
		If the `callback` function is provided this function uses libuv's threadpool.
	**/
	@:overload(function(algorithm:Null<String>, data:global.nodejs.ArrayBufferView, key:ts.AnyOf5<String, node.buffer.Buffer, node.crypto.KeyObject, node.crypto.VerifyKeyObjectInput, node.crypto.VerifyPublicKeyInput>, signature:global.nodejs.ArrayBufferView, callback:(error:Null<js.lib.Error>, result:Bool) -> Void):Void { })
	static function verify(algorithm:Null<String>, data:global.nodejs.ArrayBufferView, key:ts.AnyOf5<String, node.buffer.Buffer, node.crypto.KeyObject, node.crypto.VerifyKeyObjectInput, node.crypto.VerifyPublicKeyInput>, signature:global.nodejs.ArrayBufferView):Bool;
	/**
		Computes the Diffie-Hellman secret based on a `privateKey` and a `publicKey`.
		Both keys must have the same `asymmetricKeyType`, which must be one of `'dh'`(for Diffie-Hellman), `'ec'` (for ECDH), `'x448'`, or `'x25519'` (for ECDH-ES).
	**/
	static function diffieHellman(options:{ var privateKey : node.crypto.KeyObject; var publicKey : node.crypto.KeyObject; }):node.buffer.Buffer;
	/**
		Returns information about a given cipher.
		
		Some ciphers accept variable length keys and initialization vectors. By default,
		the `crypto.getCipherInfo()` method will return the default values for these
		ciphers. To test if a given key length or iv length is acceptable for given
		cipher, use the `keyLength` and `ivLength` options. If the given values are
		unacceptable, `undefined` will be returned.
	**/
	static function getCipherInfo(nameOrNid:ts.AnyOf2<String, Float>, ?options:node.crypto.CipherInfoOptions):Null<node.crypto.CipherInfo>;
	/**
		HKDF is a simple key derivation function defined in RFC 5869\. The given `ikm`,`salt` and `info` are used with the `digest` to derive a key of `keylen` bytes.
		
		The supplied `callback` function is called with two arguments: `err` and`derivedKey`. If an errors occurs while deriving the key, `err` will be set;
		otherwise `err` will be `null`. The successfully generated `derivedKey` will
		be passed to the callback as an [ArrayBuffer](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer). An error will be thrown if any
		of the input arguments specify invalid values or types.
		
		```js
		import { Buffer } from 'buffer';
		const {
		   hkdf
		} = await import('crypto');
		
		hkdf('sha512', 'key', 'salt', 'info', 64, (err, derivedKey) => {
		   if (err) throw err;
		   console.log(Buffer.from(derivedKey).toString('hex'));  // '24156e2...5391653'
		});
		```
	**/
	static function hkdf(digest:String, irm:ts.AnyOf14<String, js.lib.Int8Array, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.BigInt64Array, js.lib.BigUint64Array, js.lib.DataView, node.crypto.KeyObject>, salt:node.crypto.BinaryLike, info:node.crypto.BinaryLike, keylen:Float, callback:(err:Null<js.lib.Error>, derivedKey:js.lib.ArrayBuffer) -> Void):Void;
	/**
		Provides a synchronous HKDF key derivation function as defined in RFC 5869\. The
		given `ikm`, `salt` and `info` are used with the `digest` to derive a key of`keylen` bytes.
		
		The successfully generated `derivedKey` will be returned as an [ArrayBuffer](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer).
		
		An error will be thrown if any of the input arguments specify invalid values or
		types, or if the derived key cannot be generated.
		
		```js
		import { Buffer } from 'buffer';
		const {
		   hkdfSync
		} = await import('crypto');
		
		const derivedKey = hkdfSync('sha512', 'key', 'salt', 'info', 64);
		console.log(Buffer.from(derivedKey).toString('hex'));  // '24156e2...5391653'
		```
	**/
	static function hkdfSync(digest:String, ikm:ts.AnyOf14<String, js.lib.Int8Array, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Int16Array, js.lib.Uint16Array, js.lib.Int32Array, js.lib.Uint32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.BigInt64Array, js.lib.BigUint64Array, js.lib.DataView, node.crypto.KeyObject>, salt:node.crypto.BinaryLike, info:node.crypto.BinaryLike, keylen:Float):js.lib.ArrayBuffer;
	static function secureHeapUsed():node.crypto.SecureHeapUsage;
	/**
		Generates a random [RFC 4122](https://www.rfc-editor.org/rfc/rfc4122.txt) version 4 UUID. The UUID is generated using a
		cryptographic pseudorandom number generator.
	**/
	static function randomUUID(?options:node.crypto.RandomUUIDOptions):String;
	/**
		Generates a pseudorandom prime of `size` bits.
		
		If `options.safe` is `true`, the prime will be a safe prime -- that is,`(prime - 1) / 2` will also be a prime.
		
		The `options.add` and `options.rem` parameters can be used to enforce additional
		requirements, e.g., for Diffie-Hellman:
		
		* If `options.add` and `options.rem` are both set, the prime will satisfy the
		condition that `prime % add = rem`.
		* If only `options.add` is set and `options.safe` is not `true`, the prime will
		satisfy the condition that `prime % add = 1`.
		* If only `options.add` is set and `options.safe` is set to `true`, the prime
		will instead satisfy the condition that `prime % add = 3`. This is necessary
		because `prime % add = 1` for `options.add > 2` would contradict the condition
		enforced by `options.safe`.
		* `options.rem` is ignored if `options.add` is not given.
		
		Both `options.add` and `options.rem` must be encoded as big-endian sequences
		if given as an `ArrayBuffer`, `SharedArrayBuffer`, `TypedArray`, `Buffer`, or`DataView`.
		
		By default, the prime is encoded as a big-endian sequence of octets
		in an [ArrayBuffer](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer). If the `bigint` option is `true`, then a
		[bigint](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/BigInt) is provided.
	**/
	@:overload(function(size:Float, options:node.crypto.GeneratePrimeOptionsBigInt, callback:(err:Null<js.lib.Error>, prime:js.lib.BigInt) -> Void):Void { })
	@:overload(function(size:Float, options:node.crypto.GeneratePrimeOptionsArrayBuffer, callback:(err:Null<js.lib.Error>, prime:js.lib.ArrayBuffer) -> Void):Void { })
	@:overload(function(size:Float, options:node.crypto.GeneratePrimeOptions, callback:(err:Null<js.lib.Error>, prime:ts.AnyOf2<js.lib.BigInt, js.lib.ArrayBuffer>) -> Void):Void { })
	static function generatePrime(size:Float, callback:(err:Null<js.lib.Error>, prime:js.lib.ArrayBuffer) -> Void):Void;
	/**
		Generates a pseudorandom prime of `size` bits.
		
		If `options.safe` is `true`, the prime will be a safe prime -- that is,`(prime - 1) / 2` will also be a prime.
		
		The `options.add` and `options.rem` parameters can be used to enforce additional
		requirements, e.g., for Diffie-Hellman:
		
		* If `options.add` and `options.rem` are both set, the prime will satisfy the
		condition that `prime % add = rem`.
		* If only `options.add` is set and `options.safe` is not `true`, the prime will
		satisfy the condition that `prime % add = 1`.
		* If only `options.add` is set and `options.safe` is set to `true`, the prime
		will instead satisfy the condition that `prime % add = 3`. This is necessary
		because `prime % add = 1` for `options.add > 2` would contradict the condition
		enforced by `options.safe`.
		* `options.rem` is ignored if `options.add` is not given.
		
		Both `options.add` and `options.rem` must be encoded as big-endian sequences
		if given as an `ArrayBuffer`, `SharedArrayBuffer`, `TypedArray`, `Buffer`, or`DataView`.
		
		By default, the prime is encoded as a big-endian sequence of octets
		in an [ArrayBuffer](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer). If the `bigint` option is `true`, then a
		[bigint](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/BigInt) is provided.
	**/
	@:overload(function(size:Float, options:node.crypto.GeneratePrimeOptionsBigInt):js.lib.BigInt { })
	@:overload(function(size:Float, options:node.crypto.GeneratePrimeOptionsArrayBuffer):js.lib.ArrayBuffer { })
	@:overload(function(size:Float, options:node.crypto.GeneratePrimeOptions):ts.AnyOf2<js.lib.BigInt, js.lib.ArrayBuffer> { })
	static function generatePrimeSync(size:Float):js.lib.ArrayBuffer;
	/**
		Checks the primality of the `candidate`.
	**/
	@:overload(function(value:node.crypto.LargeNumberLike, options:node.crypto.CheckPrimeOptions, callback:(err:Null<js.lib.Error>, result:Bool) -> Void):Void { })
	static function checkPrime(value:node.crypto.LargeNumberLike, callback:(err:Null<js.lib.Error>, result:Bool) -> Void):Void;
	/**
		Checks the primality of the `candidate`.
	**/
	static function checkPrimeSync(candidate:node.crypto.LargeNumberLike, ?options:node.crypto.CheckPrimeOptions):Bool;
	static final fips : Bool;
	static final DEFAULT_ENCODING : global.BufferEncoding;
}