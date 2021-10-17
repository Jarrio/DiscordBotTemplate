package node.dns.promises;

@:jsRequire("dns", "promises.Resolver") extern class Resolver {
	function new(?options:node.dns.ResolverOptions);
	function cancel():Void;
	dynamic function getServers():Array<String>;
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<node.dns.AnyRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<node.dns.CaaRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<node.dns.MxRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<node.dns.NaptrRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<node.dns.SoaRecord> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<node.dns.SrvRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<Array<String>>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<ts.AnyOf7<Array<String>, node.dns.SoaRecord, Array<node.dns.AnyRecord>, Array<node.dns.MxRecord>, Array<node.dns.NaptrRecord>, Array<node.dns.SrvRecord>, Array<Array<String>>>> { })
	dynamic function resolve(hostname:String):js.lib.Promise<Array<String>>;
	@:overload(function(hostname:String, options:node.dns.ResolveWithTtlOptions):js.lib.Promise<Array<node.dns.RecordWithTtl>> { })
	@:overload(function(hostname:String, options:node.dns.ResolveOptions):js.lib.Promise<ts.AnyOf2<Array<String>, Array<node.dns.RecordWithTtl>>> { })
	dynamic function resolve4(hostname:String):js.lib.Promise<Array<String>>;
	@:overload(function(hostname:String, options:node.dns.ResolveWithTtlOptions):js.lib.Promise<Array<node.dns.RecordWithTtl>> { })
	@:overload(function(hostname:String, options:node.dns.ResolveOptions):js.lib.Promise<ts.AnyOf2<Array<String>, Array<node.dns.RecordWithTtl>>> { })
	dynamic function resolve6(hostname:String):js.lib.Promise<Array<String>>;
	dynamic function resolveAny(hostname:String):js.lib.Promise<Array<node.dns.AnyRecord>>;
	dynamic function resolveCname(hostname:String):js.lib.Promise<Array<String>>;
	dynamic function resolveMx(hostname:String):js.lib.Promise<Array<node.dns.MxRecord>>;
	dynamic function resolveNaptr(hostname:String):js.lib.Promise<Array<node.dns.NaptrRecord>>;
	dynamic function resolveNs(hostname:String):js.lib.Promise<Array<String>>;
	dynamic function resolvePtr(hostname:String):js.lib.Promise<Array<String>>;
	dynamic function resolveSoa(hostname:String):js.lib.Promise<node.dns.SoaRecord>;
	dynamic function resolveSrv(hostname:String):js.lib.Promise<Array<node.dns.SrvRecord>>;
	dynamic function resolveTxt(hostname:String):js.lib.Promise<Array<Array<String>>>;
	dynamic function reverse(ip:String):js.lib.Promise<Array<String>>;
	function setLocalAddress(?ipv4:String, ?ipv6:String):Void;
	dynamic function setServers(servers:haxe.ds.ReadOnlyArray<String>):Void;
	static var prototype : Resolver;
}