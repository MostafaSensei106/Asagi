package com.mostafa.sensei.zumi.app

import com.mostafa.sensei.zumi.NativeVideoMetadata
import android.content.Context
import android.media.MediaMetadataRetriever
import android.net.Uri
import java.io.File

object MetadataExtractor {
    fun retrieve(context: Context, path: String): NativeVideoMetadata {
        val reader = MediaMetadataRetriever()
        try {
            if (path.startsWith("content://")) reader.setDataSource(context, Uri.parse(path))
            else reader.setDataSource(path)
            fun value(key: Int) = reader.extractMetadata(key)
            val size = if (path.startsWith("content://")) {
                context.contentResolver.openAssetFileDescriptor(Uri.parse(path), "r")?.use { it.length } ?: 0L
            } else File(path).length()
            return NativeVideoMetadata(path = path,
                durationSeconds = (value(MediaMetadataRetriever.METADATA_KEY_DURATION)?.toDoubleOrNull() ?: 0.0) / 1000,
                width = value(MediaMetadataRetriever.METADATA_KEY_VIDEO_WIDTH)?.toLongOrNull(),
                height = value(MediaMetadataRetriever.METADATA_KEY_VIDEO_HEIGHT)?.toLongOrNull(),
                rotation = value(MediaMetadataRetriever.METADATA_KEY_VIDEO_ROTATION)?.toLongOrNull() ?: 0,
                bitrateBps = value(MediaMetadataRetriever.METADATA_KEY_BITRATE)?.toLongOrNull() ?: 0,
                frameRate = value(MediaMetadataRetriever.METADATA_KEY_CAPTURE_FRAMERATE)?.toDoubleOrNull() ?: 30.0,
                hasAudio = value(MediaMetadataRetriever.METADATA_KEY_HAS_AUDIO) == "yes",
                fileSizeBytes = size)
        } finally { reader.release() }
    }
}
