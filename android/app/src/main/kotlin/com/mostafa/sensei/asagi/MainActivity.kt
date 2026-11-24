package com.mostafa.sensei.asagi

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import com.mostafa.sensei.asagi.app.NativeVideoEngine

@androidx.media3.common.util.UnstableApi
class MainActivity : FlutterActivity() {
    private var notifications: com.mostafa.sensei.asagi.app.NotificationBridge? = null
    override fun onNewIntent(intent: android.content.Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        notifications?.onNewIntent(intent)
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        NativeCompressionPlannerApi.setUp(flutterEngine.dartExecutor.binaryMessenger, com.mostafa.sensei.asagi.app.NativeCompressionPlanner())
        notifications = com.mostafa.sensei.asagi.app.NotificationBridge(this, flutterEngine.dartExecutor.binaryMessenger)
        val native = NativeVideoEngine(applicationContext)
        NativeMediaApi.setUp(flutterEngine.dartExecutor.binaryMessenger, native)
        io.flutter.plugin.common.EventChannel(flutterEngine.dartExecutor.binaryMessenger, "asagi/encoding_progress").setStreamHandler(native)
    }
}
