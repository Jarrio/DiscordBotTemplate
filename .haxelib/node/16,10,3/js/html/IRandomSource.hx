package js.html;

typedef IRandomSource = {
	function getRandomValues<T>(array:T):T;
};