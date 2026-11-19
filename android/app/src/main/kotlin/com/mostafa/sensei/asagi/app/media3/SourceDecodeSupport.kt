package com.mostafa.sensei.asagi.app.media3

import android.content.Context
import android.media.MediaCodecList
import android.media.MediaExtractor
import android.media.MediaFormat
import android.net.Uri
import com.mostafa.sensei.asagi.FlutterError

/** Verifies that the device can decode the tracks Media3 will transcode. */
internal object SourceDecodeSupport {
    fun requireDecoders(context: Context, path: String, includeAudio: Boolean) {
        val extractor = MediaExtractor()
        try {
            if (path.startsWith("content://")) {
                extractor.setDataSource(context, Uri.parse(path), null)
            } else {
                extractor.setDataSource(path)
            }
            val codecs = MediaCodecList(MediaCodecList.REGULAR_CODECS)
            for (index in 0 until extractor.trackCount) {
                val format = extractor.getTrackFormat(index)
                val mime = format.getString(MediaFormat.KEY_MIME)?.lowercase() ?: continue
                val error = when {
                    mime.startsWith("video/") -> "E_VIDEO_DECODER_UNSUPPORTED"
                    includeAudio && mime.startsWith("audio/") && mime != "audio/raw" ->
                        "E_AUDIO_DECODER_UNSUPPORTED"
                    else -> continue
                }
                if (codecs.findDecoderForFormat(format) == null) {
                    throw FlutterError(error)
                }
            }
        } finally {
            extractor.release()
        }
    }
}
