package com.mostafa.sensei.asagi.app

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Context
import android.content.Intent
import android.content.pm.ServiceInfo
import android.os.Build
import android.os.IBinder
import com.mostafa.sensei.asagi.MainActivity
import com.mostafa.sensei.asagi.R

/** Keeps a user-started encode visible while the app is in the background. */
class MediaProcessingService : Service() {
    companion object {
        private const val CHANNEL = "asagi_media_processing"
        private const val NOTIFICATION_ID = 3101
        private var active: MediaProcessingService? = null
        private var configuration: Map<String, Any?> = emptyMap()

        fun configure(value: Map<String, Any?>) {
            configuration = value.toMap()
            active?.let { service -> service.showProgress(service.lastProgress.coerceAtLeast(0), force = true) }
        }
        var onTimeout: (() -> Unit)? = null

        fun start(context: Context) {
            context.startForegroundService(Intent(context, MediaProcessingService::class.java))
        }

        fun stop(context: Context) {
            context.stopService(Intent(context, MediaProcessingService::class.java))
            onTimeout = null
        }

        fun updateProgress(fraction: Double) {
            active?.showProgress((fraction.coerceIn(0.0, 1.0) * 100).toInt())
        }
    }

    private var lastProgress = -1

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        active = this
        val manager = getSystemService(NotificationManager::class.java)
        manager.createNotificationChannel(
            NotificationChannel(
                CHANNEL,
                configuration["channelName"] as? String ?: getString(R.string.compression_notification_channel),
                NotificationManager.IMPORTANCE_LOW,
            ),
        )
        val type = if (Build.VERSION.SDK_INT >= 35) {
            ServiceInfo.FOREGROUND_SERVICE_TYPE_MEDIA_PROCESSING
        } else {
            ServiceInfo.FOREGROUND_SERVICE_TYPE_DATA_SYNC
        }
        if (Build.VERSION.SDK_INT >= 29) startForeground(NOTIFICATION_ID, notification(0), type)
        else startForeground(NOTIFICATION_ID, notification(0))
        return START_NOT_STICKY
    }

    private fun notification(progress: Int): Notification {
        val intent = Intent(this, MainActivity::class.java)
            .addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP or Intent.FLAG_ACTIVITY_CLEAR_TOP)
            .putExtra(NotificationBridge.PAYLOAD, configuration["payload"] as? String)
        val pending = PendingIntent.getActivity(
            this, 0, intent, PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
        )
        val builder = Notification.Builder(this, CHANNEL)
            .setSmallIcon(R.drawable.ic_notification)
            .setContentTitle(configuration["title"] as? String ?: getString(R.string.compression_notification_title))
            .setContentText(configuration["body"] as? String ?: getString(R.string.compression_notification_text))
            .setContentIntent(pending)
            .setOnlyAlertOnce(true)
            .setOngoing(true)

        if (configuration["showDetails"] != false) builder.setProgress(100, progress, false)
        return builder.build()
    }

    private fun showProgress(progress: Int, force: Boolean = false) {
        if (!force && progress == lastProgress) return
        lastProgress = progress
        getSystemService(NotificationManager::class.java).notify(
            NOTIFICATION_ID, notification(progress),
        )
    }

    override fun onTimeout(startId: Int, fgsType: Int) {
        onTimeout?.invoke()
        stopSelf()
    }

    override fun onDestroy() {
        if (active === this) active = null
        stopForeground(STOP_FOREGROUND_REMOVE)
        super.onDestroy()
    }
}
