package com.mostafa.sensei.zumi

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import com.mostafa.sensei.zumi.app.NativeVideoEngine

@androidx.media3.common.util.UnstableApi
class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        NativeMediaApi.setUp(flutterEngine.dartExecutor.binaryMessenger, NativeVideoEngine(applicationContext))
    }
}
