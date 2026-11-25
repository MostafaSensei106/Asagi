package com.mostafa.sensei.kuymo.app

import android.content.Context
import android.graphics.Bitmap
import android.media.MediaMetadataRetriever
import android.net.Uri
import android.os.Handler
import android.os.Looper
import androidx.media3.common.C
import androidx.media3.common.MediaItem
import androidx.media3.common.MimeTypes
import androidx.media3.common.audio.AudioProcessor
import androidx.media3.common.audio.BaseAudioProcessor
import androidx.media3.common.util.UnstableApi
import androidx.media3.transformer.*
import com.mostafa.sensei.kuymo.*
import kotlin.coroutines.suspendCoroutine
import java.io.File
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.concurrent.Executors
import java.util.concurrent.atomic.AtomicBoolean
import kotlin.math.abs

@UnstableApi
class AiMediaBridge(private val context: Context) : NativeAiMediaApi {
    private val executor = Executors.newSingleThreadExecutor()
    private val main = Handler(Looper.getMainLooper())
    private val stopped = AtomicBoolean(false)
    private val samplingStopped = AtomicBoolean(false)
    private var transformer: Transformer? = null
    private var exportCallback: ((Result<String>) -> Unit)? = null
    private var exportFile: File? = null
    private fun workspace(path: String): File {
        val file = File(path).canonicalFile
        require(listOf(context.filesDir, context.cacheDir).any { file.path.startsWith(it.canonicalPath + File.separator) }) { "E_INVALID_WORKSPACE" }
        file.mkdirs(); return file
    }
    private fun source(value: String): Uri = if (value.contains("://")) Uri.parse(value) else Uri.fromFile(File(value))

    override suspend fun cancelSample() { samplingStopped.set(true) }
    override suspend fun sample(uri: String, workspace: String, intervalSeconds: Long, maxFrames: Long): NativeAiMediaSamples = suspendCoroutine { continuation ->
        sampleAsync(uri, workspace, intervalSeconds, maxFrames) { continuation.resumeWith(it) }
    }
    override suspend fun exportMedia(uri: String, workspace: String, operation: String, startMs: Long, endMs: Long, reduceNoise: Boolean, trimSilence: Boolean): String = suspendCoroutine { continuation ->
        exportMediaAsync(uri, workspace, operation, startMs, endMs, reduceNoise, trimSilence) { continuation.resumeWith(it) }
    }
    override suspend fun cancelExport(): Unit = suspendCoroutine { continuation ->
        cancelExportAsync { continuation.resumeWith(it) }
    }
    private fun sampleAsync(uri: String, workspace: String, intervalSeconds: Long, maxFrames: Long, callback: (Result<NativeAiMediaSamples>) -> Unit) {
        samplingStopped.set(false)
        executor.execute {
            val result = runCatching {
                val directory = workspace(workspace)
                val source = source(uri)
                val retriever = MediaMetadataRetriever()
                val images = mutableListOf<String>()
                var duration = 0.0
                try {
                    retriever.setDataSource(context, source)
                    duration = (retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_DURATION)?.toDoubleOrNull() ?: 0.0) / 1000
                    val hasVideo = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_HAS_VIDEO) == "yes"
                    if (hasVideo) {
                        var previous: DoubleArray? = null
                        val step = maxOf(intervalSeconds.coerceIn(1, 60), kotlin.math.ceil(duration / (maxFrames.coerceAtLeast(1) * 4)).toLong())
                        var second = 0L
                        while (second < duration && images.size < maxFrames.coerceIn(0, 32)) {
                            check(!samplingStopped.get()) { "E_AI_CANCELLED" }
                            val bitmap = if (android.os.Build.VERSION.SDK_INT >= 27) retriever.getScaledFrameAtTime(second * 1_000_000, MediaMetadataRetriever.OPTION_CLOSEST_SYNC, 512, 512)
                                else retriever.getFrameAtTime(second * 1_000_000, MediaMetadataRetriever.OPTION_CLOSEST_SYNC)
                            if (bitmap != null) {
                                val histogram = DoubleArray(16)
                                var count = 0
                                for (y in 0 until bitmap.height step 8) for (x in 0 until bitmap.width step 8) {
                                    val pixel = bitmap.getPixel(x, y)
                                    val light = (((pixel shr 16) and 255) * 3 + ((pixel shr 8) and 255) * 6 + (pixel and 255)) / 10
                                    histogram[light / 16]++; count++
                                }
                                histogram.indices.forEach { histogram[it] /= count.coerceAtLeast(1) }
                                val difference = previous?.let { old -> histogram.indices.sumOf { abs(histogram[it] - old[it]) } } ?: 2.0
                                if (difference < 0.18) { bitmap.recycle(); second += step; continue }
                                previous = histogram
                                val file = File(directory, "frame_${images.size}.jpg")
                                file.outputStream().use { bitmap.compress(Bitmap.CompressFormat.JPEG, 85, it) }
                                bitmap.recycle(); images.add(file.path)
                            }
                            second += step
                        }
                    }
                } finally { retriever.release() }
                val audio = AiAudioDecoder.decode(context, source, directory) { samplingStopped.get() }
                NativeAiMediaSamples(images, audio.files, duration)
            }
            main.post { callback(result) }
        }
    }

    private fun exportMediaAsync(uri: String, workspace: String, operation: String, startMs: Long, endMs: Long, reduceNoise: Boolean, trimSilence: Boolean, callback: (Result<String>) -> Unit) {
        if (exportCallback != null) { callback(Result.failure(IllegalStateException("E_AI_BUSY"))); return }
        exportCallback = callback; stopped.set(false)
        executor.execute {
            try {
                require(operation in setOf("trim", "extractAudio", "stripMetadata")) { "E_TOOL_NOT_ALLOWED" }
                require(startMs >= 0 && (endMs == 0L || endMs > startMs)) { "E_TOOL_RANGE" }
                val directory = workspace(workspace)
                val input = source(uri)
                var start = startMs
                var end = endMs
                if (trimSilence) {
                    val analysis = AiAudioDecoder.decode(context, input, directory) { stopped.get() }
                    require(analysis.firstSoundUs >= 0) { "E_NO_AUDIO_ACTIVITY" }
                    start = maxOf(start, (analysis.firstSoundUs / 1000 - 100).coerceAtLeast(0))
                    val last = analysis.lastSoundUs / 1000 + 100
                    end = if (end == 0L) last else minOf(end, last)
                    analysis.files.forEach { File(it).delete() }
                }
                check(!stopped.get()) { "E_AI_CANCELLED" }
                val output = File(directory, if (operation == "extractAudio") "output.m4a" else "output.mp4")
                exportFile = output
                if (operation == "stripMetadata") {
                    AiMetadataRemuxer.strip(context, input, output)
                    main.post { finish(Result.success(output.path)) }
                    return@execute
                }
                val clipping = MediaItem.ClippingConfiguration.Builder().setStartPositionMs(start)
                if (end > 0) clipping.setEndPositionMs(end)
                val media = MediaItem.Builder().setUri(input).setClippingConfiguration(clipping.build()).build()
                val item = EditedMediaItem.Builder(media).setRemoveVideo(operation == "extractAudio")
                    .setEffects(Effects(if (reduceNoise) listOf(NoiseGate()) else emptyList(), emptyList())).build()
                main.post {
                    if (stopped.get()) { finish(Result.failure(IllegalStateException("E_AI_CANCELLED"))); return@post }
                    try {
                        transformer = Transformer.Builder(context).setAudioMimeType(MimeTypes.AUDIO_AAC)
                            .addListener(object : Transformer.Listener {
                                override fun onCompleted(composition: Composition, result: ExportResult) { finish(Result.success(output.path)) }
                                override fun onError(composition: Composition, result: ExportResult, exception: ExportException) { finish(Result.failure(exception)) }
                            }).build()
                        transformer!!.start(item, output.path)
                    } catch (error: Exception) { finish(Result.failure(error)) }
                }
            } catch (error: Exception) { main.post { finish(Result.failure(error)) } }
        }
    }
    private fun finish(result: Result<String>) {
        val callback = exportCallback ?: return
        exportCallback = null; transformer = null
        if (result.isFailure) exportFile?.delete()
        exportFile = null
        callback(result)
    }
    private fun cancelExportAsync(callback: (Result<Unit>) -> Unit) {
        stopped.set(true); transformer?.cancel()
        finish(Result.failure(IllegalStateException("E_AI_CANCELLED")))
        callback(Result.success(Unit))
    }
    fun dispose() { samplingStopped.set(true); stopped.set(true); transformer?.cancel(); finish(Result.failure(IllegalStateException("E_AI_CANCELLED"))); executor.shutdown() }

    /** A soft gate attenuates quiet background noise without changing timing. */
    private class NoiseGate : BaseAudioProcessor() {
        override fun onConfigure(format: AudioProcessor.AudioFormat): AudioProcessor.AudioFormat {
            if (format.encoding != C.ENCODING_PCM_16BIT) throw AudioProcessor.UnhandledAudioFormatException(format)
            return format
        }
        override fun queueInput(input: ByteBuffer) {
            input.order(ByteOrder.LITTLE_ENDIAN)
            val output = replaceOutputBuffer(input.remaining()).order(ByteOrder.LITTLE_ENDIAN)
            while (input.remaining() >= 2) {
                val sample = input.short.toInt()
                val gain = (abs(sample) / 1000.0).coerceIn(0.15, 1.0)
                output.putShort((sample * gain).toInt().toShort())
            }
            output.flip()
        }
    }
}
