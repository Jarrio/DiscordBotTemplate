package node.crypto;

typedef ED448KeyPairOptions<PubF, PrivF> = {
	var publicKeyEncoding : {
		var type : String;
		var format : PubF;
	};
	var privateKeyEncoding : BasePrivateKeyEncodingOptions<PrivF> & {
		var type : String;
	};
};