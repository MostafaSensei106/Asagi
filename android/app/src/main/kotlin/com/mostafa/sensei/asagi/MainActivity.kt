package com.mostafa.sensei.asagi

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import com.mostafa.sensei.asagi.app.NativeVideoEngine

@androidx.media3.common.util.UnstableApi
class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        NativeCompressionPlannerApi.setUp(flutterEngine.dartExecutor.binaryMessenger, com.mostafa.sensei.asagi.app.NativeCompressionPlanner())
        val native = NativeVideoEngine(applicationContext)
        NativeMediaApi.setUp(flutterEngine.dartExecutor.binaryMessenger, native)
        io.flutter.plugin.common.EventChannel(flutterEngine.dartExecutor.binaryMessenger, "asagi/encoding_progress").setStreamHandler(native)
    }
}
