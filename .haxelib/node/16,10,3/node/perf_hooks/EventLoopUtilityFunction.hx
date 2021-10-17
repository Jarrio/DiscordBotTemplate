package node.perf_hooks;

typedef EventLoopUtilityFunction = ts.AnyOf3<() -> EventLoopUtilization, (util1:EventLoopUtilization) -> EventLoopUtilization, (util1:EventLoopUtilization, util2:EventLoopUtilization) -> EventLoopUtilization>;