package com.mostafa.sensei.zumi.app

import android.content.Context
import android.net.Uri
import androidx.media3.common.MediaItem
import androidx.media3.common.MimeTypes
import androidx.media3.common.util.UnstableApi
import androidx.media3.effect.Presentation
import androidx.media3.effect.FrameDropEffect
import androidx.media3.transformer.*
import com.mostafa.sensei.zumi.*
import kotlinx.coroutines.*
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException

@UnstableApi
class NativeVideoEngine(private val context: Context) : NativeMediaApi {
    private var transformer: Transformer? = null
    private var pending: CancellableContinuation<Boolean>? = null
    override suspend fun extractVideoMetadata(inputPath: String): NativeVideoMetadata =
        withContext(Dispatchers.IO) { MetadataExtractor.retrieve(context, inputPath) }
    override suspend fun startHardwareEncoding(request: NativeCompressRequest): Boolean = withContext(Dispatchers.Main) {
        check(transformer == null) { "E_BUSY" }
        val source = requireNotNull(request.inputPath)
        val output = requireNotNull(request.outputPath)
        require(source != output && !java.io.File(output).exists()) { "E_INVALID_OUTPUT" }
        suspendCancellableCoroutine { continuation ->
            pending = continuation
            try {
                val factory = DefaultEncoderFactory.Builder(context)
                    .setRequestedVideoEncoderSettings(VideoEncoderSettings.Builder()
                        .setBitrate(requireNotNull(request.targetVideoBitrateBps).toInt()).build())
                    .setRequestedAudioEncoderSettings(AudioEncoderSettings.Builder()
                        .setBitrate(requireNotNull(request.targetAudioBitrateBps).coerceAtLeast(48000).toInt()).build())
                    .build()
                val item = EditedMediaItem.Builder(MediaItem.fromUri(if (source.startsWith("content://")) Uri.parse(source) else Uri.fromFile(java.io.File(source))))
                    .setRemoveAudio(request.targetAudioBitrateBps == 0L)
                    .setEffects(Effects(emptyList(), listOf(
                        Presentation.createForWidthAndHeight(requireNotNull(request.targetWidth).toInt(), requireNotNull(request.targetHeight).toInt(), Presentation.LAYOUT_SCALE_TO_FIT),
                        FrameDropEffect.createDefaultFrameDropEffect((request.frameRate ?: 30.0).toFloat())
                    ))).build()
                transformer = Transformer.Builder(context).setEncoderFactory(factory)
                    .setVideoMimeType(MimeTypes.VIDEO_H264).setAudioMimeType(MimeTypes.AUDIO_AAC)
                    .addListener(object : Transformer.Listener {
                        override fun onCompleted(composition: Composition, exportResult: ExportResult) {
                            transformer = null; pending = null
                            if (continuation.isActive) continuation.resume(true)
                        }
                        override fun onError(composition: Composition, exportResult: ExportResult, exportException: ExportException) {
                            transformer = null; pending = null
                            if (continuation.isActive) continuation.resumeWithException(exportException)
                        }
                    }).build()
                continuation.invokeOnCancellation { android.os.Handler(android.os.Looper.getMainLooper()).post { transformer?.cancel(); transformer = null; pending = null } }
                transformer!!.start(item, output)
            } catch (error: Exception) {
                transformer?.cancel(); transformer = null; pending = null
                if (continuation.isActive) continuation.resumeWithException(error)
            }
        }
    }
    override suspend fun cancelEncoding() = withContext(Dispatchers.Main) {
        transformer?.cancel(); transformer = null
        pending?.let { if (it.isActive) it.resumeWithException(IllegalStateException("E_CANCELLED")) }; pending = null
        Unit
    }
}
