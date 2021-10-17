package global;

typedef WithImplicitCoercion<T> = ts.AnyOf2<{
	function valueOf():T;
}, T>;