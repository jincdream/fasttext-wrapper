cmd_Release/obj.target/fasttext_wrapper/fasttext_wrapper.o := c++ -o Release/obj.target/fasttext_wrapper/fasttext_wrapper.o ../fasttext_wrapper.cc '-DNODE_GYP_MODULE_NAME=fasttext_wrapper' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-D_GLIBCXX_USE_CXX11_ABI=1' '-D_DARWIN_USE_64_BIT_INODE=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DOPENSSL_NO_PINSHARED' '-DOPENSSL_THREADS' '-DBUILDING_NODE_EXTENSION' -I/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node -I/Users/jinc/Library/Caches/node-gyp/18.16.0/src -I/Users/jinc/Library/Caches/node-gyp/18.16.0/deps/openssl/config -I/Users/jinc/Library/Caches/node-gyp/18.16.0/deps/openssl/openssl/include -I/Users/jinc/Library/Caches/node-gyp/18.16.0/deps/uv/include -I/Users/jinc/Library/Caches/node-gyp/18.16.0/deps/zlib -I/Users/jinc/Library/Caches/node-gyp/18.16.0/deps/v8/include -I../../node_modules/nan -I../../libraries/fastText/src  -O3 -gdwarf-2 -mmacosx-version-min=10.15 -arch x86_64 -Wall -Wendif-labels -W -Wno-unused-parameter -std=gnu++17 -stdlib=libc++ -fno-rtti -fno-exceptions -fno-strict-aliasing -MMD -MF ./Release/.deps/Release/obj.target/fasttext_wrapper/fasttext_wrapper.o.d.raw   -c
Release/obj.target/fasttext_wrapper/fasttext_wrapper.o: \
  ../fasttext_wrapper.cc ../../node_modules/nan/nan.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/node_version.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/uv.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/uv/errno.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/uv/version.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/uv/unix.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/uv/threadpool.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/uv/darwin.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/node.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/cppgc/common.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8config.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-array-buffer.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-local-handle.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-internal.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-version.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-object.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-maybe.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-persistent-handle.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-weak-callback-info.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-primitive.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-data.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-value.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-traced-handle.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-container.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-context.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-snapshot.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-date.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-debug.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-script.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-message.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-exception.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-extension.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-external.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-function.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-function-callback.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-template.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-memory-span.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-initialization.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-callbacks.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-isolate.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-embedder-heap.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-microtask.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-statistics.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-promise.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-unwinder.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-embedder-state-scope.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-platform.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-json.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-locker.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-microtask-queue.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-primitive-object.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-proxy.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-regexp.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-typed-array.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-value-serializer.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-wasm.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/node_buffer.h \
  /Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/node_object_wrap.h \
  ../../node_modules/nan/nan_callbacks.h \
  ../../node_modules/nan/nan_callbacks_12_inl.h \
  ../../node_modules/nan/nan_maybe_43_inl.h \
  ../../node_modules/nan/nan_converters.h \
  ../../node_modules/nan/nan_converters_43_inl.h \
  ../../node_modules/nan/nan_new.h \
  ../../node_modules/nan/nan_implementation_12_inl.h \
  ../../node_modules/nan/nan_persistent_12_inl.h \
  ../../node_modules/nan/nan_weak.h \
  ../../node_modules/nan/nan_object_wrap.h \
  ../../node_modules/nan/nan_private.h \
  ../../node_modules/nan/nan_typedarray_contents.h \
  ../../node_modules/nan/nan_json.h \
  ../../node_modules/nan/nan_scriptorigin.h ../fasttext_wrapper.h \
  /usr/local/include/fasttext/fasttext.h \
  /usr/local/include/fasttext/args.h \
  /usr/local/include/fasttext/densematrix.h \
  /usr/local/include/fasttext/matrix.h \
  /usr/local/include/fasttext/real.h \
  /usr/local/include/fasttext/dictionary.h \
  /usr/local/include/fasttext/meter.h \
  /usr/local/include/fasttext/utils.h \
  /usr/local/include/fasttext/model.h \
  /usr/local/include/fasttext/vector.h
../fasttext_wrapper.cc:
../../node_modules/nan/nan.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/node_version.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/uv.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/uv/errno.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/uv/version.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/uv/unix.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/uv/threadpool.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/uv/darwin.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/node.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/cppgc/common.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8config.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-array-buffer.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-local-handle.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-internal.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-version.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-object.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-maybe.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-persistent-handle.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-weak-callback-info.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-primitive.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-data.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-value.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-traced-handle.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-container.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-context.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-snapshot.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-date.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-debug.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-script.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-message.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-exception.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-extension.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-external.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-function.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-function-callback.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-template.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-memory-span.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-initialization.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-callbacks.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-isolate.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-embedder-heap.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-microtask.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-statistics.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-promise.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-unwinder.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-embedder-state-scope.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-platform.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-json.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-locker.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-microtask-queue.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-primitive-object.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-proxy.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-regexp.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-typed-array.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-value-serializer.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/v8-wasm.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/node_buffer.h:
/Users/jinc/Library/Caches/node-gyp/18.16.0/include/node/node_object_wrap.h:
../../node_modules/nan/nan_callbacks.h:
../../node_modules/nan/nan_callbacks_12_inl.h:
../../node_modules/nan/nan_maybe_43_inl.h:
../../node_modules/nan/nan_converters.h:
../../node_modules/nan/nan_converters_43_inl.h:
../../node_modules/nan/nan_new.h:
../../node_modules/nan/nan_implementation_12_inl.h:
../../node_modules/nan/nan_persistent_12_inl.h:
../../node_modules/nan/nan_weak.h:
../../node_modules/nan/nan_object_wrap.h:
../../node_modules/nan/nan_private.h:
../../node_modules/nan/nan_typedarray_contents.h:
../../node_modules/nan/nan_json.h:
../../node_modules/nan/nan_scriptorigin.h:
../fasttext_wrapper.h:
/usr/local/include/fasttext/fasttext.h:
/usr/local/include/fasttext/args.h:
/usr/local/include/fasttext/densematrix.h:
/usr/local/include/fasttext/matrix.h:
/usr/local/include/fasttext/real.h:
/usr/local/include/fasttext/dictionary.h:
/usr/local/include/fasttext/meter.h:
/usr/local/include/fasttext/utils.h:
/usr/local/include/fasttext/model.h:
/usr/local/include/fasttext/vector.h:
