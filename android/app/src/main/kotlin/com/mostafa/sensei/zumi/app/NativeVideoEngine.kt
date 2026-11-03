package com.mostafa.sensei.zumi.app

import android.content.Context
import android.net.Uri
import io.flutter.plugin.common.EventChannel
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
class NativeVideoEngine(private val context: Context) : NativeMediaApi, EventChannel.StreamHandler {
    private var events: EventChannel.EventSink? = null
    private val handler = android.os.Handler(android.os.Looper.getMainLooper())
    private val progress = object : Runnable {
        override fun run() {
            val active = transformer ?: return
            val holder = ProgressHolder()
            if (active.getProgress(holder) == Transformer.PROGRESS_STATE_AVAILABLE) events?.success(holder.progress / 100.0)
            handler.postDelayed(this, 250)
        }
    }
    override fun onListen(arguments: Any?, sink: EventChannel.EventSink) { events = sink }
    override fun onCancel(arguments: Any?) { events = null }
    private var transformer: Transformer? = null
    private var pending: CancellableContinuation<Boolean>? = null
    override suspend fun extractVideoMetadata(inputPath: String): NativeVideoMetadata =
        withContext(Dispatchers.IO) { MetadataExtractor.retrieve(context, inputPath) }
    override suspend fun startHardwareEncoding(request: NativeCompressRequest): Boolean = withContext(Dispatchers.Main) {
        check(transformer == null) { "E_BUSY" }
        val source = requireNotNull(request.inputPath)
        val output = requireNotNull(request.outputPath)
        require(source != output && !java.io.File(output).exists()) { "E_INVALID_OUTPUT" }
        require((request.targetWidth ?: 0) >= 2 && (request.targetHeight ?: 0) >= 2 &&
            (request.targetVideoBitrateBps ?: 0) > 0 && (request.frameRate ?: 30.0) in 1.0..30.0) { "E_INVALID_INPUT" }
        val metadata = withContext(Dispatchers.IO) { MetadataExtractor.retrieve(context, source) }
        check(transformer == null) { "E_BUSY" }
        val required = (((request.targetVideoBitrateBps ?: 0) + (request.targetAudioBitrateBps ?: 0)).toDouble() *
            (metadata.durationSeconds ?: 0.0) / 8 * 1.2 + 50_000_000).toLong()
        val parent = requireNotNull(java.io.File(output).parentFile)
        check(android.os.StatFs(parent.path).availableBytes >= required) { "E_NO_SPACE" }
        suspendCancellableCoroutine { continuation ->
            pending = continuation
            try {
                val factory = DefaultEncoderFactory.Builder(context)
                    .setRequestedVideoEncoderSettings(VideoEncoderSettings.Builder()
                        .setBitrate(requireNotNull(request.targetVideoBitrateBps).toInt()).setiFrameIntervalSeconds(2f).build())
                    .setRequestedAudioEncoderSettings(AudioEncoderSettings.Builder()
                        .setBitrate(requireNotNull(request.targetAudioBitrateBps).coerceAtLeast(48000).toInt()).build())
                    .build()
                val forcedFactory = object : Codec.EncoderFactory by factory {
                    override fun audioNeedsEncoding() = true
                    override fun videoNeedsEncoding() = true
                }
                val item = EditedMediaItem.Builder(MediaItem.fromUri(if (source.startsWith("content://")) Uri.parse(source) else Uri.fromFile(java.io.File(source))))
                    .setRemoveAudio(request.targetAudioBitrateBps == 0L)
                    .setEffects(Effects(emptyList(), listOf(
                        Presentation.createForWidthAndHeight(requireNotNull(request.targetWidth).toInt(), requireNotNull(request.targetHeight).toInt(), Presentation.LAYOUT_SCALE_TO_FIT),
                        FrameDropEffect.createDefaultFrameDropEffect((request.frameRate ?: 30.0).toFloat())
                    ))).build()
                transformer = Transformer.Builder(context).setEncoderFactory(forcedFactory)
                    .setVideoMimeType(MimeTypes.VIDEO_H264).setAudioMimeType(MimeTypes.AUDIO_AAC)
                    .addListener(object : Transformer.Listener {
                        override fun onCompleted(composition: Composition, exportResult: ExportResult) {
                            handler.removeCallbacks(progress); transformer = null; pending = null
                            if (continuation.isActive) continuation.resume(true)
                        }
                        override fun onError(composition: Composition, exportResult: ExportResult, exportException: ExportException) {
                            handler.removeCallbacks(progress); transformer = null; pending = null
                            if (continuation.isActive) continuation.resumeWithException(exportException)
                        }
                    }).build()
                continuation.invokeOnCancellation { android.os.Handler(android.os.Looper.getMainLooper()).post { transformer?.cancel(); handler.removeCallbacks(progress); transformer = null; pending = null } }
                val composition = Composition.Builder(EditedMediaItemSequence(item))
                    .setHdrMode(Composition.HDR_MODE_TONE_MAP_HDR_TO_SDR_USING_OPEN_GL).build()
                transformer!!.start(composition, output)
                handler.post(progress)
            } catch (error: Exception) {
                transformer?.cancel(); handler.removeCallbacks(progress); transformer = null; pending = null
                if (continuation.isActive) continuation.resumeWithException(error)
            }
        }
    }
    override suspend fun cancelEncoding() = withContext(Dispatchers.Main) {
        transformer?.cancel(); handler.removeCallbacks(progress); transformer = null
        pending?.let { if (it.isActive) it.resumeWithException(IllegalStateException("E_CANCELLED")) }; pending = null
        Unit
    }
}
