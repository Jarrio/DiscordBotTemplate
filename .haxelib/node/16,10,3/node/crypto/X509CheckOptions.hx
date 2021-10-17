package node.crypto;

typedef X509CheckOptions = {
	var subject : String;
	var wildcards : Bool;
	var partialWildcards : Bool;
	var multiLabelWildcards : Bool;
	var singleLabelSubdomains : Bool;
};