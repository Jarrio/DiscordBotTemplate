package node;

@:jsRequire("node:v8") @valueModuleOnly extern class NodeV8 {
	/**
		Returns an integer representing a version tag derived from the V8 version,
		command-line flags, and detected CPU features. This is useful for determining
		whether a `vm.Script` `cachedData` buffer is compatible with this instance
		of V8.
		
		```js
		console.log(v8.cachedDataVersionTag()); // 3947234607
		// The value returned by v8.cachedDataVersionTag() is derived from the V8
		// version, command-line flags, and detected CPU features. Test that the value
		// does indeed update when flags are toggled.
		v8.setFlagsFromString('--allow_natives_syntax');
		console.log(v8.cachedDataVersionTag()); // 183726201
		```
	**/
	static function cachedDataVersionTag():Float;
	/**
		Returns an object with the following properties:
		
		`does_zap_garbage` is a 0/1 boolean, which signifies whether the`--zap_code_space` option is enabled or not. This makes V8 overwrite heap
		garbage with a bit pattern. The RSS footprint (resident set size) gets bigger
		because it continuously touches all heap pages and that makes them less likely
		to get swapped out by the operating system.
		
		`number_of_native_contexts` The value of native\_context is the number of the
		top-level contexts currently active. Increase of this number over time indicates
		a memory leak.
		
		`number_of_detached_contexts` The value of detached\_context is the number
		of contexts that were detached and not yet garbage collected. This number
		being non-zero indicates a potential memory leak.
		
		```js
		{
		   total_heap_size: 7326976,
		   total_heap_size_executable: 4194304,
		   total_physical_size: 7326976,
		   total_available_size: 1152656,
		   used_heap_size: 3476208,
		   heap_size_limit: 1535115264,
		   malloced_memory: 16384,
		   peak_malloced_memory: 1127496,
		   does_zap_garbage: 0,
		   number_of_native_contexts: 1,
		   number_of_detached_contexts: 0
		}
		```
	**/
	static function getHeapStatistics():node.v8.HeapInfo;
	/**
		Returns statistics about the V8 heap spaces, i.e. the segments which make up
		the V8 heap. Neither the ordering of heap spaces, nor the availability of a
		heap space can be guaranteed as the statistics are provided via the
		V8[`GetHeapSpaceStatistics`](https://v8docs.nodesource.com/node-13.2/d5/dda/classv8_1_1_isolate.html#ac673576f24fdc7a33378f8f57e1d13a4) function and may change from one V8 version to the
		next.
		
		The value returned is an array of objects containing the following properties:
		
		```json
		[
		   {
		     "space_name": "new_space",
		     "space_size": 2063872,
		     "space_used_size": 951112,
		     "space_available_size": 80824,
		     "physical_space_size": 2063872
		   },
		   {
		     "space_name": "old_space",
		     "space_size": 3090560,
		     "space_used_size": 2493792,
		     "space_available_size": 0,
		     "physical_space_size": 3090560
		   },
		   {
		     "space_name": "code_space",
		     "space_size": 1260160,
		     "space_used_size": 644256,
		     "space_available_size": 960,
		     "physical_space_size": 1260160
		   },
		   {
		     "space_name": "map_space",
		     "space_size": 1094160,
		     "space_used_size": 201608,
		     "space_available_size": 0,
		     "physical_space_size": 1094160
		   },
		   {
		     "space_name": "large_object_space",
		     "space_size": 0,
		     "space_used_size": 0,
		     "space_available_size": 1490980608,
		     "physical_space_size": 0
		   }
		]
		```
	**/
	static function getHeapSpaceStatistics():Array<node.v8.HeapSpaceInfo>;
	/**
		The `v8.setFlagsFromString()` method can be used to programmatically set
		V8 command-line flags. This method should be used with care. Changing settings
		after the VM has started may result in unpredictable behavior, including
		crashes and data loss; or it may simply do nothing.
		
		The V8 options available for a version of Node.js may be determined by running`node --v8-options`.
		
		Usage:
		
		```js
		// Print GC events to stdout for one minute.
		const v8 = require('v8');
		v8.setFlagsFromString('--trace_gc');
		setTimeout(() => { v8.setFlagsFromString('--notrace_gc'); }, 60e3);
		```
	**/
	static function setFlagsFromString(flags:String):Void;
	/**
		Generates a snapshot of the current V8 heap and returns a Readable
		Stream that may be used to read the JSON serialized representation.
		This JSON stream format is intended to be used with tools such as
		Chrome DevTools. The JSON schema is undocumented and specific to the
		V8 engine. Therefore, the schema may change from one version of V8 to the next.
		
		```js
		// Print heap snapshot to the console
		const v8 = require('v8');
		const stream = v8.getHeapSnapshot();
		stream.pipe(process.stdout);
		```
	**/
	static function getHeapSnapshot():node.stream.Readable;
	/**
		Generates a snapshot of the current V8 heap and writes it to a JSON
		file. This file is intended to be used with tools such as Chrome
		DevTools. The JSON schema is undocumented and specific to the V8
		engine, and may change from one version of V8 to the next.
		
		A heap snapshot is specific to a single V8 isolate. When using `worker threads`, a heap snapshot generated from the main thread will
		not contain any information about the workers, and vice versa.
		
		```js
		const { writeHeapSnapshot } = require('v8');
		const {
		   Worker,
		   isMainThread,
		   parentPort
		} = require('worker_threads');
		
		if (isMainThread) {
		   const worker = new Worker(__filename);
		
		   worker.once('message', (filename) => {
		     console.log(`worker heapdump: ${filename}`);
		     // Now get a heapdump for the main thread.
		     console.log(`main thread heapdump: ${writeHeapSnapshot()}`);
		   });
		
		   // Tell the worker to create a heapdump.
		   worker.postMessage('heapdump');
		} else {
		   parentPort.once('message', (message) => {
		     if (message === 'heapdump') {
		       // Generate a heapdump for the worker
		       // and return the filename to the parent.
		       parentPort.postMessage(writeHeapSnapshot());
		     }
		   });
		}
		```
	**/
	static function writeHeapSnapshot(?filename:String):String;
	/**
		Returns an object with the following properties:
		
		```js
		{
		   code_and_metadata_size: 212208,
		   bytecode_and_metadata_size: 161368,
		   external_script_source_size: 1410794
		}
		```
	**/
	static function getHeapCodeStatistics():node.v8.HeapCodeStatistics;
	/**
		Uses a `DefaultSerializer` to serialize `value` into a buffer.
	**/
	static function serialize(value:Dynamic):node.buffer.Buffer;
	/**
		Uses a `DefaultDeserializer` with default options to read a JS value
		from a buffer.
	**/
	static function deserialize(buffer:global.nodejs.TypedArray):Dynamic;
	/**
		The `v8.takeCoverage()` method allows the user to write the coverage started by `NODE_V8_COVERAGE` to disk on demand. This method can be invoked multiple
		times during the lifetime of the process. Each time the execution counter will
		be reset and a new coverage report will be written to the directory specified
		by `NODE_V8_COVERAGE`.
		
		When the process is about to exit, one last coverage will still be written to
		disk unless {@link stopCoverage} is invoked before the process exits.
	**/
	static function takeCoverage():Void;
	/**
		The `v8.stopCoverage()` method allows the user to stop the coverage collection
		started by `NODE_V8_COVERAGE`, so that V8 can release the execution count
		records and optimize code. This can be used in conjunction with {@link takeCoverage} if the user wants to collect the coverage on demand.
	**/
	static function stopCoverage():Void;
}