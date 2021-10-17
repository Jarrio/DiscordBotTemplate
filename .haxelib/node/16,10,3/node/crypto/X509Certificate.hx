package node.crypto;

/**
	Encapsulates an X509 certificate and provides read-only access to
	its information.
	
	```js
	const { X509Certificate } = await import('crypto');
	
	const x509 = new X509Certificate('{... pem encoded cert ...}');
	
	console.log(x509.subject);
	```
**/
@:jsRequire("crypto", "X509Certificate") extern class X509Certificate {
	function new(buffer:BinaryLike);
	/**
		Will be \`true\` if this is a Certificate Authority (ca) certificate.
	**/
	final ca : Bool;
	/**
		The SHA-1 fingerprint of this certificate.
	**/
	final fingerprint : String;
	/**
		The SHA-256 fingerprint of this certificate.
	**/
	final fingerprint256 : String;
	/**
		The complete subject of this certificate.
	**/
	final subject : String;
	/**
		The subject alternative name specified for this certificate.
	**/
	final subjectAltName : String;
	/**
		The information access content of this certificate.
	**/
	final infoAccess : String;
	/**
		An array detailing the key usages for this certificate.
	**/
	final keyUsage : Array<String>;
	/**
		The issuer identification included in this certificate.
	**/
	final issuer : String;
	/**
		The issuer certificate or `undefined` if the issuer certificate is not
		available.
	**/
	@:optional
	final issuerCertificate : X509Certificate;
	/**
		The public key `KeyObject` for this certificate.
	**/
	final publicKey : KeyObject;
	/**
		A `Buffer` containing the DER encoding of this certificate.
	**/
	final raw : node.buffer.Buffer;
	/**
		The serial number of this certificate.
	**/
	final serialNumber : String;
	/**
		The date/time from which this certificate is considered valid.
	**/
	final validFrom : String;
	/**
		The date/time until which this certificate is considered valid.
	**/
	final validTo : String;
	/**
		Checks whether the certificate matches the given email address.
	**/
	function checkEmail(email:String, ?options:X509CheckOptions):Null<String>;
	/**
		Checks whether the certificate matches the given host name.
	**/
	function checkHost(name:String, ?options:X509CheckOptions):Null<String>;
	/**
		Checks whether the certificate matches the given IP address (IPv4 or IPv6).
	**/
	function checkIP(ip:String, ?options:X509CheckOptions):Null<String>;
	/**
		Checks whether this certificate was issued by the given `otherCert`.
	**/
	function checkIssued(otherCert:X509Certificate):Bool;
	/**
		Checks whether the public key for this certificate is consistent with
		the given private key.
	**/
	function checkPrivateKey(privateKey:KeyObject):Bool;
	/**
		There is no standard JSON encoding for X509 certificates. The`toJSON()` method returns a string containing the PEM encoded
		certificate.
	**/
	function toJSON():String;
	/**
		Returns information about this certificate using the legacy `certificate object` encoding.
	**/
	function toLegacyObject():node.tls.PeerCertificate;
	/**
		Returns the PEM-encoded certificate.
	**/
	function toString():String;
	/**
		Verifies that this certificate was signed by the given public key.
		Does not perform any other validation checks on the certificate.
	**/
	function verify(publicKey:KeyObject):Bool;
	static var prototype : X509Certificate;
}