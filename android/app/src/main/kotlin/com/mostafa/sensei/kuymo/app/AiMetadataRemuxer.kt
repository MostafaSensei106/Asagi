package com.mostafa.sensei.kuymo.app

import android.content.Context
import android.media.MediaCodec
import android.media.MediaExtractor
import android.media.MediaMetadataRetriever
import android.media.MediaMuxer
import android.net.Uri
import java.io.File
import java.nio.ByteBuffer

/** Copies encoded tracks while omitting container metadata, including location. */
object AiMetadataRemuxer {
    fun strip(context: Context, uri: Uri, output: File) {
        val extractor = MediaExtractor()
        var muxer: MediaMuxer? = null
        var started = false
        try {
            extractor.setDataSource(context, uri, null)
            val writer = MediaMuxer(output.path, MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4)
            muxer = writer
            val mapping = mutableMapOf<Int, Int>()
            for (index in 0 until extractor.trackCount) {
                val format = extractor.getTrackFormat(index)
                val mime = format.getString(android.media.MediaFormat.KEY_MIME) ?: continue
                if (mime.startsWith("video/") || mime.startsWith("audio/")) {
                    mapping[index] = writer.addTrack(format); extractor.selectTrack(index)
                }
            }
            require(mapping.isNotEmpty()) { "E_NO_MEDIA_TRACKS" }
            val metadata = MediaMetadataRetriever()
            try {
                metadata.setDataSource(context, uri)
                val rotation = metadata.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_ROTATION)?.toIntOrNull() ?: 0
                if (rotation in setOf(0, 90, 180, 270)) writer.setOrientationHint(rotation)
            } finally { metadata.release() }
            writer.start(); started = true
            val buffer = ByteBuffer.allocateDirect(4 * 1024 * 1024)
            val info = MediaCodec.BufferInfo()
            while (true) {
                buffer.clear()
                val size = extractor.readSampleData(buffer, 0)
                if (size < 0) break
                val track = mapping[extractor.sampleTrackIndex] ?: error("E_MEDIA_TRACK")
                info.set(0, size, extractor.sampleTime, if (extractor.sampleFlags and MediaExtractor.SAMPLE_FLAG_SYNC != 0) MediaCodec.BUFFER_FLAG_KEY_FRAME else 0)
                writer.writeSampleData(track, buffer, info)
                extractor.advance()
            }
            writer.stop(); started = false
        } catch (error: Exception) { output.delete(); throw error }
        finally {
            if (started) try { muxer?.stop() } catch (_: Exception) { }
            muxer?.release(); extractor.release()
        }
    }
}
