package com.mostafa.sensei.zumi.app

import com.mostafa.sensei.zumi.app.contracts.SourceMetadata
import com.mostafa.sensei.zumi.app.contracts.VideoMetadataReader
import android.content.Context
import android.media.MediaMetadataRetriever
import android.media.MediaExtractor
import android.media.MediaFormat
import android.net.Uri
import java.io.File

class MetadataExtractor(private val context: Context) : VideoMetadataReader {
    override fun read(path: String): SourceMetadata {
        val reader = MediaMetadataRetriever()
        try {
            if (path.startsWith("content://")) reader.setDataSource(context, Uri.parse(path))
            else reader.setDataSource(path)
            fun value(key: Int) = reader.extractMetadata(key)
            val size = if (path.startsWith("content://")) {
                context.contentResolver.openAssetFileDescriptor(Uri.parse(path), "r")?.use { it.length } ?: 0L
            } else File(path).length()
            val extractor = MediaExtractor()
            var transfer = "sdr"
            try {
                if (path.startsWith("content://")) extractor.setDataSource(context, Uri.parse(path), null)
                else extractor.setDataSource(path)
                for (index in 0 until extractor.trackCount) {
                    val format = extractor.getTrackFormat(index)
                    val mime = format.getString(MediaFormat.KEY_MIME) ?: ""
                    if (!mime.startsWith("video/")) continue
                    val color = if (format.containsKey(MediaFormat.KEY_COLOR_TRANSFER)) format.getInteger(MediaFormat.KEY_COLOR_TRANSFER) else 0
                    transfer = when {
                        mime == "video/dolby-vision" -> "dolbyVision"
                        color == MediaFormat.COLOR_TRANSFER_ST2084 -> "pq"
                        color == MediaFormat.COLOR_TRANSFER_HLG -> "hlg"
                        else -> "sdr"
                    }
                    break
                }
            } finally { extractor.release() }
            return SourceMetadata(
                durationSeconds = (value(MediaMetadataRetriever.METADATA_KEY_DURATION)?.toDoubleOrNull() ?: 0.0) / 1000,
                width = value(MediaMetadataRetriever.METADATA_KEY_VIDEO_WIDTH)?.toLongOrNull(),
                height = value(MediaMetadataRetriever.METADATA_KEY_VIDEO_HEIGHT)?.toLongOrNull(),
                rotation = value(MediaMetadataRetriever.METADATA_KEY_VIDEO_ROTATION)?.toLongOrNull() ?: 0,
                bitrateBps = value(MediaMetadataRetriever.METADATA_KEY_BITRATE)?.toLongOrNull() ?: 0,
                frameRate = value(MediaMetadataRetriever.METADATA_KEY_CAPTURE_FRAMERATE)?.toDoubleOrNull() ?: 30.0,
                hasAudio = value(MediaMetadataRetriever.METADATA_KEY_HAS_AUDIO) == "yes",
                fileSizeBytes = size, isHdr = transfer != "sdr", colorTransfer = transfer)
        } finally { reader.release() }
    }
}
