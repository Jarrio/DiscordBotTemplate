package js.html;

typedef PaymentMethodData = {
	@:optional
	var data : Dynamic;
	var supportedMethods : ts.AnyOf2<String, Array<String>>;
};