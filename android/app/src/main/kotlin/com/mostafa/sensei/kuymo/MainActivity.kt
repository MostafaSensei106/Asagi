package com.mostafa.sensei.kuymo

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import com.mostafa.sensei.kuymo.app.NativeVideoEngine

@androidx.media3.common.util.UnstableApi
class MainActivity : FlutterActivity() {
    private var aiMedia: com.mostafa.sensei.kuymo.app.AiMediaBridge? = null
    private var aiFiles: com.mostafa.sensei.kuymo.app.AiFilesBridge? = null
    private var notifications: com.mostafa.sensei.kuymo.app.NotificationBridge? = null
    override fun onNewIntent(intent: android.content.Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        notifications?.onNewIntent(intent)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: android.content.Intent?) {
        if (aiFiles?.onActivityResult(requestCode, resultCode, data) != true) super.onActivityResult(requestCode, resultCode, data)
    }
    override fun onDestroy() {
        aiMedia?.dispose()
        aiFiles?.dispose()
        super.onDestroy()
    }
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        NativeCompressionPlannerApi.setUp(flutterEngine.dartExecutor.binaryMessenger, com.mostafa.sensei.kuymo.app.NativeCompressionPlanner())
        notifications = com.mostafa.sensei.kuymo.app.NotificationBridge(this, flutterEngine.dartExecutor.binaryMessenger)
        aiMedia = com.mostafa.sensei.kuymo.app.AiMediaBridge(applicationContext)
        NativeAiMediaApi.setUp(flutterEngine.dartExecutor.binaryMessenger, aiMedia)
        aiFiles = com.mostafa.sensei.kuymo.app.AiFilesBridge(this)
        NativeAiFilesApi.setUp(flutterEngine.dartExecutor.binaryMessenger, aiFiles)
        val native = NativeVideoEngine(applicationContext)
        NativeMediaApi.setUp(flutterEngine.dartExecutor.binaryMessenger, native)
        io.flutter.plugin.common.EventChannel(flutterEngine.dartExecutor.binaryMessenger, "kuymo/encoding_progress").setStreamHandler(native)
    }
}
