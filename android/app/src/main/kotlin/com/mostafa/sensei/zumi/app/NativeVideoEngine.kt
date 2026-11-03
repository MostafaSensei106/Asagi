package com.mostafa.sensei.zumi.app

import android.content.Context
import androidx.media3.common.util.UnstableApi
import com.mostafa.sensei.zumi.*
import com.mostafa.sensei.zumi.app.contracts.*
import com.mostafa.sensei.zumi.app.media3.*
import io.flutter.plugin.common.EventChannel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

/** Channel adapter. Media3 and Flutter wire models are isolated behind contracts. */
@UnstableApi
class NativeVideoEngine private constructor(
    private val metadata: VideoMetadataReader,
    private val backend: VideoEncodingBackend,
    private val progress: ProgressRelay
) : NativeMediaApi, EventChannel.StreamHandler {
    constructor(context: Context) : this(MetadataExtractor(context), ProgressRelay(), context)
    private constructor(metadata: VideoMetadataReader, progress: ProgressRelay, context: Context) :
        this(metadata, Media3VideoEncoder(context, metadata, AndroidHdrPolicy(), progress::emit), progress)
    override suspend fun extractVideoMetadata(inputPath: String): NativeVideoMetadata = withContext(Dispatchers.IO) {
        val m = metadata.read(inputPath)
        NativeVideoMetadata(path = inputPath, durationSeconds = m.durationSeconds,
            width = m.width, height = m.height, rotation = m.rotation, bitrateBps = m.bitrateBps,
            frameRate = m.frameRate, hasAudio = m.hasAudio, fileSizeBytes = m.fileSizeBytes,
            isHdr = m.isHdr, colorTransfer = m.colorTransfer)
    }
    override suspend fun startHardwareEncoding(request: NativeCompressRequest): Boolean = backend.encode(
        EncodeConfiguration(requireNotNull(request.inputPath), requireNotNull(request.outputPath),
            requireNotNull(request.targetVideoBitrateBps), requireNotNull(request.targetAudioBitrateBps),
            requireNotNull(request.targetWidth), requireNotNull(request.targetHeight), request.frameRate ?: 30.0,
            if (request.hdrMode == NativeHdrMode.PRESERVE) HdrMode.PRESERVE else HdrMode.TONE_MAP_TO_SDR))
    override suspend fun pauseEncoding() = backend.pause()
    override suspend fun resumeEncoding() = backend.resume()
    override suspend fun cancelEncoding() = backend.cancel()
    override fun onListen(arguments: Any?, sink: EventChannel.EventSink) { progress.sink = sink }
    override fun onCancel(arguments: Any?) { progress.sink = null }
}

private class ProgressRelay {
    var sink: EventChannel.EventSink? = null
    fun emit(fraction: Double) { sink?.success(fraction) }
}
