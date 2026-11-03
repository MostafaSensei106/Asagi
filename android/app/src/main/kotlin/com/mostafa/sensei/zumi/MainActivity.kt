package com.mostafa.sensei.zumi

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import com.mostafa.sensei.zumi.app.NativeVideoEngine

@androidx.media3.common.util.UnstableApi
class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        val native = NativeVideoEngine(applicationContext)
        NativeMediaApi.setUp(flutterEngine.dartExecutor.binaryMessenger, native)
        io.flutter.plugin.common.EventChannel(flutterEngine.dartExecutor.binaryMessenger, "zumi/encoding_progress").setStreamHandler(native)
    }
}
