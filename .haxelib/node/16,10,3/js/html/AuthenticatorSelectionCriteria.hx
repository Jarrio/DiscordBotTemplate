package js.html;

typedef AuthenticatorSelectionCriteria = {
	@:optional
	var authenticatorAttachment : AuthenticatorAttachment;
	@:optional
	var requireResidentKey : Bool;
	@:optional
	var userVerification : UserVerificationRequirement;
};