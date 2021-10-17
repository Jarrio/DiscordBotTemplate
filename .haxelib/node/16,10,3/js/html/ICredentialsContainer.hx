package js.html;

typedef ICredentialsContainer = {
	function create(?options:CredentialCreationOptions):js.lib.Promise<Null<Credential>>;
	function get(?options:CredentialRequestOptions):js.lib.Promise<Null<Credential>>;
	function preventSilentAccess():js.lib.Promise<ts.Undefined>;
	function store(credential:Credential):js.lib.Promise<Credential>;
};