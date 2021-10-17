package node.worker_threads;

typedef TransferListItem = ts.AnyOf5<MessagePort, js.lib.ArrayBuffer, node.buffer.Blob, node.crypto.X509Certificate, node.fs.promises.FileHandle>;