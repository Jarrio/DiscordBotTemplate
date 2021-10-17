package node.tls;

typedef DetailedPeerCertificate = {
	var issuerCertificate : DetailedPeerCertificate;
	var subject : Certificate;
	var issuer : Certificate;
	var subjectaltname : String;
	var infoAccess : global.nodejs.Dict<Array<String>>;
	var modulus : String;
	var exponent : String;
	var valid_from : String;
	var valid_to : String;
	var fingerprint : String;
	var fingerprint256 : String;
	var ext_key_usage : Array<String>;
	var serialNumber : String;
	var raw : node.buffer.Buffer;
};