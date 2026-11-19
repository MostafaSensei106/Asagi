package com.mostafa.sensei.asagi.app

import android.content.Context
import androidx.media3.common.util.UnstableApi
import com.mostafa.sensei.asagi.*
import com.mostafa.sensei.asagi.app.contracts.*
import com.mostafa.sensei.asagi.app.media3.*
import io.flutter.plugin.common.EventChannel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/** Channel adapter. Media3 and Flutter wire models are isolated behind contracts. */
@UnstableApi
class NativeVideoEngine private constructor(
    private val metadata: VideoMetadataReader,
    private val backend: VideoEncodingBackend,
    private val progress: ProgressRelay,
    private val appContext: Context,
) : NativeMediaApi, EventChannel.StreamHandler {
    constructor(context: Context) : this(MetadataExtractor(context), ProgressRelay(), context)
    private constructor(metadata: VideoMetadataReader, progress: ProgressRelay, context: Context) :
        this(metadata, Media3VideoEncoder(context, metadata, AndroidHdrPolicy(), progress::emit), progress, context.applicationContext)
    override suspend fun extractVideoMetadata(inputPath: String): NativeVideoMetadata = withContext(Dispatchers.IO) {
        val m = metadata.read(inputPath)
        NativeVideoMetadata(path = inputPath, durationSeconds = m.durationSeconds,
            width = m.width, height = m.height, rotation = m.rotation, bitrateBps = m.bitrateBps,
            frameRate = m.frameRate, hasAudio = m.hasAudio, fileSizeBytes = m.fileSizeBytes,
            isHdr = m.isHdr, colorTransfer = m.colorTransfer, pixelAspectRatio = m.pixelAspectRatio)
    }
    override suspend fun startHardwareEncoding(request: NativeCompressRequest): Boolean {
        val context = appContext
        val configuration = EncodeConfiguration(
            requireNotNull(request.inputPath), requireNotNull(request.outputPath),
            requireNotNull(request.targetVideoBitrateBps), requireNotNull(request.targetAudioBitrateBps),
            requireNotNull(request.targetWidth), requireNotNull(request.targetHeight), request.frameRate ?: 30.0,
            if (request.hdrMode == NativeHdrMode.PRESERVE) HdrMode.PRESERVE else HdrMode.TONE_MAP_TO_SDR,
        )
        withContext(Dispatchers.Main) {
            MediaProcessingService.onTimeout = {
                CoroutineScope(Dispatchers.Main).launch { backend.cancel() }
            }
            MediaProcessingService.start(context)
        }
        return try {
            backend.encode(configuration)
        } finally {
            withContext(Dispatchers.Main) { MediaProcessingService.stop(context) }
        }
    }
    override suspend fun compressStagedFallback(
        stagedPath: String,
        request: NativeCompressRequest
    ): Boolean {
        val configuration = EncodeConfiguration(
            requireNotNull(request.inputPath), requireNotNull(request.outputPath),
            requireNotNull(request.targetVideoBitrateBps), requireNotNull(request.targetAudioBitrateBps),
            requireNotNull(request.targetWidth), requireNotNull(request.targetHeight), request.frameRate ?: 30.0,
            if (request.hdrMode == NativeHdrMode.PRESERVE) HdrMode.PRESERVE else HdrMode.TONE_MAP_TO_SDR,
        )
        val context = appContext
        withContext(Dispatchers.Main) {
            MediaProcessingService.onTimeout = {
                CoroutineScope(Dispatchers.Main).launch { backend.cancel() }
            }
            MediaProcessingService.start(context)
        }
        return try {
            backend.encodeStagedFallback(stagedPath, configuration)
        } catch (error: Exception) {
            val code = error.message?.takeIf { it.startsWith("E_") } ?: "E_STAGED_FALLBACK_FAILED"
            throw FlutterError(code, error.message ?: code, null)
        } finally {
            withContext(Dispatchers.Main) { MediaProcessingService.stop(context) }
        }
    }
    override suspend fun pauseEncoding() = backend.pause()
    override suspend fun resumeEncoding() = backend.resume()
    override suspend fun cancelEncoding() = backend.cancel()
    override fun onListen(arguments: Any?, sink: EventChannel.EventSink) { progress.sink = sink }
    override fun onCancel(arguments: Any?) { progress.sink = null }
}

private class ProgressRelay {
    var sink: EventChannel.EventSink? = null
    fun emit(fraction: Double) {
        sink?.success(fraction)
        MediaProcessingService.updateProgress(fraction)
    }
}
