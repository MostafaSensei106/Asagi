package com.mostafa.sensei.asagi.app

import android.content.Intent
import android.provider.Settings
import com.mostafa.sensei.asagi.MainActivity
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

/** Owns app-defined foreground-service taps, independently of the local notification plugin. */
class NotificationBridge(private val activity: MainActivity, messenger: BinaryMessenger) {
    private val channel = MethodChannel(messenger, "asagi/notifications")
    private var pendingPayload: String? = activity.intent?.getStringExtra(PAYLOAD)
    private var ready = false

    init {
        channel.setMethodCallHandler { call, result ->
            when (call.method) {
                "takeLaunchPayload" -> {
                    ready = true
                    result.success(pendingPayload)
                    pendingPayload = null
                    activity.intent?.removeExtra(PAYLOAD)
                }
                "configureProgress" -> {
                    @Suppress("UNCHECKED_CAST")
                    val configuration = call.arguments as? Map<String, Any?> ?: emptyMap()
                    MediaProcessingService.configure(configuration)
                    result.success(null)
                }
                "openChannelSettings" -> {
                    val intent = Intent(Settings.ACTION_CHANNEL_NOTIFICATION_SETTINGS)
                        .putExtra(Settings.EXTRA_APP_PACKAGE, activity.packageName)
                        .putExtra(Settings.EXTRA_CHANNEL_ID, call.arguments as? String)
                    activity.startActivity(intent)
                    result.success(null)
                }
                else -> result.notImplemented()
            }
        }
    }

    fun onNewIntent(intent: Intent) {
        val payload = intent.getStringExtra(PAYLOAD) ?: return
        if (ready) channel.invokeMethod("notificationTap", payload) else pendingPayload = payload
        intent.removeExtra(PAYLOAD)
    }

    companion object { const val PAYLOAD = "asagi.notification.payload" }
}
