package com.mostafa.sensei.zumi.app.media3

import android.content.Context
import android.media.MediaCodecList
import androidx.media3.common.MimeTypes
import androidx.media3.common.util.UnstableApi
import androidx.media3.transformer.*
import com.mostafa.sensei.zumi.app.contracts.*
import kotlinx.coroutines.*
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException

@UnstableApi
class Media3VideoEncoder(
    private val context: Context,
    private val metadataReader: VideoMetadataReader,
    private val hdrPolicy: HdrConfigurationPolicy,
    private val onProgress: (Double) -> Unit
) : VideoEncodingBackend {
    private val handler = android.os.Handler(android.os.Looper.getMainLooper())
    private val progress = object : Runnable {
        override fun run() {
            val active = transformer ?: return
            val holder = ProgressHolder()
            if (active.getProgress(holder) == Transformer.PROGRESS_STATE_AVAILABLE) onProgress(holder.progress / 100.0)
            handler.postDelayed(this, 250)
        }
    }
    @Volatile private var paused = false
    private var preparing = false
    private var generation = 0
    private var composition: Composition? = null
    private var destination: String? = null
    private var activeOutput: String? = null
    private val checkpoints = mutableListOf<String>()
    private var canResume = false
    private var requiredFreeBytes = 0L
    private fun clearOperation() {
        handler.removeCallbacks(progress)
        checkpoints.forEach { java.io.File(it).delete() }
        checkpoints.clear()
        paused = false; preparing = false; composition = null; destination = null; activeOutput = null
        transformer = null; pending = null
    }
    private var transformer: Transformer? = null
    private var pending: CancellableContinuation<Boolean>? = null
    override suspend fun encode(request: EncodeConfiguration): Boolean = withContext(Dispatchers.Main) {
        check(transformer == null && !preparing) { "E_BUSY" }
        paused = false
        val source = request.inputPath
        val output = request.outputPath
        require(source != output && !java.io.File(output).exists()) { "E_INVALID_OUTPUT" }
        require(request.targetWidth >= 2 && request.targetHeight >= 2 &&
            request.targetVideoBitrateBps > 0 && request.frameRate in 1.0..120.0) { "E_INVALID_INPUT" }
        val operation = ++generation
        preparing = true
        val metadata = try {
            withContext(Dispatchers.IO) {
                val sourceMetadata = metadataReader.read(source)
                SourceDecodeSupport.requireDecoders(
                    context, source, request.targetAudioBitrateBps > 0 && sourceMetadata.hasAudio
                )
                sourceMetadata
            }
        } catch (error: Exception) { preparing = false; paused = false; throw error }
        preparing = false
        check(operation == generation) { "E_CANCELLED" }
        check(transformer == null) { "E_BUSY" }
        val required = ((request.targetVideoBitrateBps + request.targetAudioBitrateBps).toDouble() *
            metadata.durationSeconds / 8 * 1.2 + 50_000_000).toLong()
        requiredFreeBytes = required
        val parent = requireNotNull(java.io.File(output).parentFile)
        check(android.os.StatFs(parent.path).availableBytes >= required) { "E_NO_SPACE" }
        val preserve = hdrPolicy.preserve(request, metadata)
        val mimeType = if (preserve) MimeTypes.VIDEO_H265 else MimeTypes.VIDEO_H264
        val eligible = MediaCodecList(MediaCodecList.REGULAR_CODECS).codecInfos.filter { codec ->
            if (!codec.isEncoder || !codec.supportedTypes.any { it.equals(mimeType, ignoreCase = true) }) {
                false
            } else {
                runCatching {
                    val capabilities = codec.getCapabilitiesForType(mimeType).videoCapabilities
                    capabilities != null &&
                        capabilities.areSizeAndRateSupported(
                            request.targetWidth.toInt(), request.targetHeight.toInt(), request.frameRate
                        ) && capabilities.bitrateRange.contains(request.targetVideoBitrateBps.toInt())
                }.getOrDefault(false)
            }
        }
        check(eligible.isNotEmpty()) { "E_ENCODER_UNSUPPORTED" }
        val hardware = eligible.filter { EncoderUtil.isHardwareAccelerated(it, mimeType) }
        val encoderNames = (hardware.ifEmpty { eligible }).map { it.name }.toSet()
        suspendCancellableCoroutine { continuation ->
            pending = continuation
            try {
                val factory = Media3Configuration.encoderFactory(context, request, encoderNames)
                val planned = Media3Configuration.composition(request, preserve)
                transformer = Transformer.Builder(context).setEncoderFactory(factory)
                    .setVideoMimeType(mimeType).setAudioMimeType(MimeTypes.AUDIO_AAC)
                    .addListener(object : Transformer.Listener {
                        override fun onCompleted(composition: Composition, exportResult: ExportResult) {
                            try {
                                val actual = activeOutput
                                if (actual != null && actual != output) {
                                    java.io.File(output).delete()
                                    check(java.io.File(actual).renameTo(java.io.File(output))) { "E_OUTPUT_MOVE" }
                                }
                                checkpoints.remove(output)
                                clearOperation()
                                onProgress(1.0)
                                if (continuation.isActive) continuation.resume(true)
                            } catch (error: Exception) {
                                clearOperation()
                                if (continuation.isActive) continuation.resumeWithException(error)
                            }
                        }
                        override fun onError(composition: Composition, exportResult: ExportResult, exportException: ExportException) {
                            clearOperation()
                            if (continuation.isActive) continuation.resumeWithException(exportException)
                        }
                    }).build()
                continuation.invokeOnCancellation { android.os.Handler(android.os.Looper.getMainLooper()).post { transformer?.cancel(); clearOperation() } }
                composition = planned; destination = output; activeOutput = output
                canResume = metadata.hasAudio == true
                if (!paused) { transformer!!.start(planned, output); handler.post(progress) }
            } catch (error: Exception) {
                transformer?.cancel(); clearOperation()
                if (continuation.isActive) continuation.resumeWithException(error)
            }
        }
    }

    override suspend fun encodeStagedFallback(
        stagedPath: String,
        request: EncodeConfiguration
    ): Boolean = withContext(Dispatchers.Main) {
        check(transformer == null && !preparing) { "E_BUSY" }
        require(java.io.File(stagedPath).isFile) { "E_STAGED_FALLBACK_MISSING" }
        require(request.outputPath != request.inputPath && !java.io.File(request.outputPath).exists()) { "E_INVALID_OUTPUT" }
        require(request.targetVideoBitrateBps > 0 && request.targetAudioBitrateBps >= 0) { "E_INVALID_INPUT" }
        paused = false
        val operation = ++generation
        preparing = true
        try {
            withContext(Dispatchers.IO) {
                val metadata = metadataReader.read(request.inputPath)
                val requiredBytes = ((request.targetVideoBitrateBps + request.targetAudioBitrateBps).toDouble() *
                    metadata.durationSeconds / 8 * 1.2 + 50_000_000).toLong()
                val parent = requireNotNull(java.io.File(request.outputPath).parentFile)
                check(android.os.StatFs(parent.path).availableBytes >= requiredBytes) { "E_NO_SPACE" }
                StagedFallbackMuxer(context, { fraction ->
                    handler.post { if (operation == generation) onProgress(fraction) }
                }, { operation != generation }, { paused })
                    .encode(stagedPath, request)
            }.also { check(operation == generation) { "E_CANCELLED" } }
        } finally {
            if (operation == generation) preparing = false
        }
    }

    override suspend fun pause() = withContext(Dispatchers.Main) {
        if (!paused && (preparing || transformer != null)) {
            paused = true
            transformer?.cancel()
            handler.removeCallbacks(progress)
        }
        Unit
    }
    override suspend fun resume() = withContext(Dispatchers.Main) {
        if (paused) {
            paused = false
            val engine = transformer
            val planned = composition
            val previous = activeOutput
            if (engine != null && planned != null && previous != null) {
                try {
                    check(android.os.StatFs(requireNotNull(java.io.File(previous).parent)).availableBytes >= requiredFreeBytes) { "E_NO_SPACE" }
                    val next = "${requireNotNull(destination)}.resume-${java.util.UUID.randomUUID()}.mp4"
                    checkpoints.add(previous)
                    activeOutput = next
                    if (canResume && java.io.File(previous).length() > 0) engine.resume(planned, next, previous)
                    else engine.start(planned, next)
                    handler.post(progress)
                } catch (error: Exception) {
                    engine.cancel()
                    val waiting = pending
                    clearOperation()
                    if (waiting?.isActive == true) waiting.resumeWithException(error)
                    throw error
                }
            }
        }
        Unit
    }
    override suspend fun cancel() = withContext(Dispatchers.Main) {
        generation++
        transformer?.cancel()
        val waiting = pending
        clearOperation()
        if (waiting?.isActive == true) waiting.resumeWithException(IllegalStateException("E_CANCELLED"))
        Unit
    }
}
