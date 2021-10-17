package node;

/**
	The `tls` module provides an implementation of the Transport Layer Security
	(TLS) and Secure Socket Layer (SSL) protocols that is built on top of OpenSSL.
	The module can be accessed using:
	
	```js
	const tls = require('tls');
	```
**/
@:jsRequire("tls") @valueModuleOnly extern class Tls {
	/**
		Verifies the certificate `cert` is issued to `hostname`.
		
		Returns [Error](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error) object, populating it with `reason`, `host`, and `cert` on
		failure. On success, returns [undefined](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures#Undefined_type).
		
		This function can be overwritten by providing alternative function as part of
		the `options.checkServerIdentity` option passed to `tls.connect()`. The
		overwriting function can call `tls.checkServerIdentity()` of course, to augment
		the checks done with additional verification.
		
		This function is only called if the certificate passed all other checks, such as
		being issued by trusted CA (`options.ca`).
	**/
	static function checkServerIdentity(hostname:String, cert:node.tls.PeerCertificate):Null<js.lib.Error>;
	/**
		Creates a new {@link Server}. The `secureConnectionListener`, if provided, is
		automatically set as a listener for the `'secureConnection'` event.
		
		The `ticketKeys` options is automatically shared between `cluster` module
		workers.
		
		The following illustrates a simple echo server:
		
		```js
		const tls = require('tls');
		const fs = require('fs');
		
		const options = {
		   key: fs.readFileSync('server-key.pem'),
		   cert: fs.readFileSync('server-cert.pem'),
		
		   // This is necessary only if using client certificate authentication.
		   requestCert: true,
		
		   // This is necessary only if the client uses a self-signed certificate.
		   ca: [ fs.readFileSync('client-cert.pem') ]
		};
		
		const server = tls.createServer(options, (socket) => {
		   console.log('server connected',
		               socket.authorized ? 'authorized' : 'unauthorized');
		   socket.write('welcome!\n');
		   socket.setEncoding('utf8');
		   socket.pipe(socket);
		});
		server.listen(8000, () => {
		   console.log('server bound');
		});
		```
		
		The server can be tested by connecting to it using the example client from {@link connect}.
	**/
	@:overload(function(options:node.tls.TlsOptions, ?secureConnectionListener:(socket:node.tls.TLSSocket) -> Void):node.tls.Server { })
	static function createServer(?secureConnectionListener:(socket:node.tls.TLSSocket) -> Void):node.tls.Server;
	/**
		The `callback` function, if specified, will be added as a listener for the `'secureConnect'` event.
		
		`tls.connect()` returns a {@link TLSSocket} object.
		
		Unlike the `https` API, `tls.connect()` does not enable the
		SNI (Server Name Indication) extension by default, which may cause some
		servers to return an incorrect certificate or reject the connection
		altogether. To enable SNI, set the `servername` option in addition
		to `host`.
		
		The following illustrates a client for the echo server example from {@link createServer}:
		
		```js
		// Assumes an echo server that is listening on port 8000.
		const tls = require('tls');
		const fs = require('fs');
		
		const options = {
		   // Necessary only if the server requires client certificate authentication.
		   key: fs.readFileSync('client-key.pem'),
		   cert: fs.readFileSync('client-cert.pem'),
		
		   // Necessary only if the server uses a self-signed certificate.
		   ca: [ fs.readFileSync('server-cert.pem') ],
		
		   // Necessary only if the server's cert isn't for "localhost".
		   checkServerIdentity: () => { return null; },
		};
		
		const socket = tls.connect(8000, options, () => {
		   console.log('client connected',
		               socket.authorized ? 'authorized' : 'unauthorized');
		   process.stdin.pipe(socket);
		   process.stdin.resume();
		});
		socket.setEncoding('utf8');
		socket.on('data', (data) => {
		   console.log(data);
		});
		socket.on('end', () => {
		   console.log('server ends connection');
		});
		```
	**/
	@:overload(function(port:Float, ?host:String, ?options:node.tls.ConnectionOptions, ?secureConnectListener:() -> Void):node.tls.TLSSocket { })
	@:overload(function(port:Float, ?options:node.tls.ConnectionOptions, ?secureConnectListener:() -> Void):node.tls.TLSSocket { })
	static function connect(options:node.tls.ConnectionOptions, ?secureConnectListener:() -> Void):node.tls.TLSSocket;
	/**
		Creates a new secure pair object with two streams, one of which reads and writes
		the encrypted data and the other of which reads and writes the cleartext data.
		Generally, the encrypted stream is piped to/from an incoming encrypted data
		stream and the cleartext one is used as a replacement for the initial encrypted
		stream.
		
		`tls.createSecurePair()` returns a `tls.SecurePair` object with `cleartext` and`encrypted` stream properties.
		
		Using `cleartext` has the same API as {@link TLSSocket}.
		
		The `tls.createSecurePair()` method is now deprecated in favor of`tls.TLSSocket()`. For example, the code:
		
		```js
		pair = tls.createSecurePair(// ... );
		pair.encrypted.pipe(socket);
		socket.pipe(pair.encrypted);
		```
		
		can be replaced by:
		
		```js
		secureSocket = tls.TLSSocket(socket, options);
		```
		
		where `secureSocket` has the same API as `pair.cleartext`.
	**/
	static function createSecurePair(?context:node.tls.SecureContext, ?isServer:Bool, ?requestCert:Bool, ?rejectUnauthorized:Bool):node.tls.SecurePair;
	/**
		{@link createServer} sets the default value of the `honorCipherOrder` option
		to `true`, other APIs that create secure contexts leave it unset.
		
		{@link createServer} uses a 128 bit truncated SHA1 hash value generated
		from `process.argv` as the default value of the `sessionIdContext` option, other
		APIs that create secure contexts have no default value.
		
		The `tls.createSecureContext()` method creates a `SecureContext` object. It is
		usable as an argument to several `tls` APIs, such as {@link createServer} and `server.addContext()`, but has no public methods.
		
		A key is _required_ for ciphers that use certificates. Either `key` or`pfx` can be used to provide it.
		
		If the `ca` option is not given, then Node.js will default to using [Mozilla's publicly trusted list of
		CAs](https://hg.mozilla.org/mozilla-central/raw-file/tip/security/nss/lib/ckfw/builtins/certdata.txt).
	**/
	static function createSecureContext(?options:node.tls.SecureContextOptions):node.tls.SecureContext;
	/**
		Returns an array with the names of the supported TLS ciphers. The names are
		lower-case for historical reasons, but must be uppercased to be used in
		the `ciphers` option of {@link createSecureContext}.
		
		Cipher names that start with `'tls_'` are for TLSv1.3, all the others are for
		TLSv1.2 and below.
		
		```js
		console.log(tls.getCiphers()); // ['aes128-gcm-sha256', 'aes128-sha', ...]
		```
	**/
	static function getCiphers():Array<String>;
	static final CLIENT_RENEG_LIMIT : Float;
	static final CLIENT_RENEG_WINDOW : Float;
	/**
		The default curve name to use for ECDH key agreement in a tls server.
		The default value is 'auto'. See tls.createSecureContext() for further
		information.
	**/
	static var DEFAULT_ECDH_CURVE : String;
	/**
		The default value of the maxVersion option of
		tls.createSecureContext(). It can be assigned any of the supported TLS
		protocol versions, 'TLSv1.3', 'TLSv1.2', 'TLSv1.1', or 'TLSv1'. Default:
		'TLSv1.3', unless changed using CLI options. Using --tls-max-v1.2 sets
		the default to 'TLSv1.2'. Using --tls-max-v1.3 sets the default to
		'TLSv1.3'. If multiple of the options are provided, the highest maximum
		is used.
	**/
	static var DEFAULT_MAX_VERSION : node.tls.SecureVersion;
	/**
		The default value of the minVersion option of tls.createSecureContext().
		It can be assigned any of the supported TLS protocol versions,
		'TLSv1.3', 'TLSv1.2', 'TLSv1.1', or 'TLSv1'. Default: 'TLSv1.2', unless
		changed using CLI options. Using --tls-min-v1.0 sets the default to
		'TLSv1'. Using --tls-min-v1.1 sets the default to 'TLSv1.1'. Using
		--tls-min-v1.3 sets the default to 'TLSv1.3'. If multiple of the options
		are provided, the lowest minimum is used.
	**/
	static var DEFAULT_MIN_VERSION : node.tls.SecureVersion;
	/**
		An immutable array of strings representing the root certificates (in PEM
		format) used for verifying peer certificates. This is the default value
		of the ca option to tls.createSecureContext().
	**/
	static final rootCertificates : haxe.ds.ReadOnlyArray<String>;
}