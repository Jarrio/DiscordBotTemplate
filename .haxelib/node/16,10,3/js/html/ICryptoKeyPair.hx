package js.html;

/**
	The CryptoKeyPair dictionary of the Web Crypto API represents a key pair for an asymmetric cryptography algorithm, also known as a public-key algorithm.
**/
typedef ICryptoKeyPair = {
	var privateKey : js.html.CryptoKey;
	var publicKey : js.html.CryptoKey;
};