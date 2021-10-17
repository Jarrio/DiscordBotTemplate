package node.util;

typedef CustomPromisify<TCustom> = ts.AnyOf2<CustomPromisifySymbol<TCustom>, CustomPromisifyLegacy<TCustom>>;