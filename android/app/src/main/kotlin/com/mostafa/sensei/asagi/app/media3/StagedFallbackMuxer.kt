package com.mostafa.sensei.asagi.app.media3

import android.content.Context
import android.media.MediaCodec
import android.media.MediaCodecInfo
import android.media.MediaCodecList
import android.media.MediaExtractor
import android.media.MediaFormat
import android.os.Build
import androidx.media3.common.C
import androidx.media3.common.MimeTypes
import androidx.media3.common.util.MediaFormatUtil
import androidx.media3.muxer.BufferInfo
import androidx.media3.muxer.Mp4Muxer
import com.mostafa.sensei.asagi.app.contracts.EncodeConfiguration
import java.io.File
import java.io.FileOutputStream
import java.io.RandomAccessFile
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.max
import androidx.media3.common.util.UnstableApi
import androidx.media3.transformer.EncoderUtil

/** Encodes the staged NV12 stream to AVC and copies an existing AAC track unchanged. */
@UnstableApi
internal class StagedFallbackMuxer(
    private val context: Context,
    private val onProgress: (Double) -> Unit,
    private val isCancelled: () -> Boolean,
    private val isPaused: () -> Boolean,
) {
    fun encode(stagedPath: String, request: EncodeConfiguration): Boolean {
        val staged = File(stagedPath)
        val output = File(request.outputPath)
        require(staged.isFile) { "E_STAGED_FALLBACK_MISSING" }
        require(staged.canonicalFile != output.canonicalFile && !output.exists()) { "E_INVALID_OUTPUT" }
        require(request.targetWidth in 2..Int.MAX_VALUE.toLong() && request.targetHeight in 2..Int.MAX_VALUE.toLong() &&
            request.targetWidth % 2L == 0L && request.targetHeight % 2L == 0L) {
            "E_INVALID_INPUT"
        }
        require(request.targetVideoBitrateBps in 1..Int.MAX_VALUE.toLong() &&
            request.targetAudioBitrateBps in 0..Int.MAX_VALUE.toLong()) { "E_INVALID_INPUT" }
        val stageHeader = readHeader(staged)
        require(stageHeader.width == request.targetWidth.toInt() && stageHeader.height == request.targetHeight.toInt()) {
            "E_STAGED_FALLBACK_DIMENSIONS"
        }
        val codecInfo = selectAvcEncoder(stageHeader.width, stageHeader.height, request)
        val sourceMetadata = readAudioTrack(request.inputPath, request.targetAudioBitrateBps > 0)
        val audio = sourceMetadata.extractor
        val audioTrackIndex = sourceMetadata.trackIndex
        val audioFormat = sourceMetadata.format
        if (request.targetAudioBitrateBps > 0 && audioTrackIndex >= 0) {
            require(audioFormat?.getString(MediaFormat.KEY_MIME) == MimeTypes.AUDIO_AAC) {
                "E_STAGED_FALLBACK_AUDIO_UNSUPPORTED"
            }
        }
        val keepAudio = request.targetAudioBitrateBps > 0 && audioTrackIndex >= 0
        val codec = try {
            MediaCodec.createByCodecName(codecInfo.name)
        } catch (error: Exception) {
            audio?.release()
            throw error
        }
        var muxer: Mp4Muxer? = null
        var muxerOutput: FileOutputStream? = null
        var videoTrack = C.INDEX_UNSET
        var audioTrack = C.INDEX_UNSET
        var audioPending: AudioSample? = null
        var audioEos = !keepAudio
        var videoFormatReady = false
        var videoEos = false
        var inputEos = false
        var frameIndex = 0L
        var previousPtsUs = -1L
        var lastVideoPtsUs = 0L

        fun addTracksIfReady(outputFormat: MediaFormat) {
            if (videoFormatReady) return
            val format = MediaFormatUtil.createFormatFromMediaFormat(outputFormat)
            muxerOutput = FileOutputStream(output)
            muxer = Mp4Muxer.Builder(muxerOutput!!)
                .setAttemptStreamableOutputEnabled(true)
                .setLastSampleDurationBehavior(Mp4Muxer.LAST_SAMPLE_DURATION_BEHAVIOR_SET_FROM_END_OF_STREAM_BUFFER_OR_DUPLICATE_PREVIOUS)
                .build()
            videoTrack = muxer!!.addTrack(format)
            if (keepAudio) audioTrack = muxer!!.addTrack(MediaFormatUtil.createFormatFromMediaFormat(audioFormat!!))
            videoFormatReady = true
        }

        fun nextAudioSample(): AudioSample? {
            if (!keepAudio || audioEos) return null
            val extractor = audio ?: return null
            val sampleSize = extractor.sampleSize
            if (sampleSize < 0) {
                audioEos = true
                return null
            }
            require(sampleSize <= MAX_AUDIO_SAMPLE_BYTES) { "E_STAGED_FALLBACK_AUDIO_SAMPLE_TOO_LARGE" }
            val capacity = max(sampleSize.toInt(), 1024)
            val bytes = ByteBuffer.allocateDirect(capacity)
            val size = extractor.readSampleData(bytes, 0)
            if (size < 0) {
                audioEos = true
                return null
            }
            bytes.position(0)
            bytes.limit(size)
            val pts = extractor.sampleTime
            val flags = if ((extractor.sampleFlags and MediaExtractor.SAMPLE_FLAG_SYNC) != 0) C.BUFFER_FLAG_KEY_FRAME else 0
            extractor.advance()
            return AudioSample(bytes, pts, flags)
        }

        fun flushAudioThrough(ptsUs: Long) {
            while (keepAudio) {
                if (audioPending == null) audioPending = nextAudioSample()
                val sample = audioPending ?: return
                if (sample.ptsUs > ptsUs) return
                muxer!!.writeSampleData(audioTrack, sample.data, BufferInfo(sample.ptsUs, sample.data.remaining(), sample.flags))
                audioPending = null
            }
        }

        fun drainAvailableOutput(waitForOutput: Boolean = false) {
            drainEncoder(codec, output = { outputFormat -> addTracksIfReady(outputFormat) }, sample = { data, info ->
                check(videoFormatReady) { "E_ENCODER_FORMAT_MISSING" }
                writeVideoSample(data, info, videoTrack, muxer!!, ::flushAudioThrough, stageHeader)
                if ((info.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) videoEos = true
            }, waitForOutput = waitForOutput)
        }

        try {
            val format = MediaFormat.createVideoFormat(MimeTypes.VIDEO_H264, stageHeader.width, stageHeader.height).apply {
                setInteger(MediaFormat.KEY_COLOR_FORMAT, MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Flexible)
                setInteger(MediaFormat.KEY_BIT_RATE, request.targetVideoBitrateBps.toInt())
                setInteger(MediaFormat.KEY_FRAME_RATE, stageHeader.fps)
                setInteger(MediaFormat.KEY_I_FRAME_INTERVAL, 2)
                if (Build.VERSION.SDK_INT >= 29) setInteger(MediaFormat.KEY_MAX_B_FRAMES, 0)
            }
            codec.configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE)
            codec.start()
            RandomAccessFile(staged, "r").use { stage ->
                stage.seek(36)
                while (frameIndex < stageHeader.frameCount) {
                    awaitUnpaused()
                    val record = ByteArray(20)
                    stage.readFully(record)
                    val recordBuffer = ByteBuffer.wrap(record).order(ByteOrder.LITTLE_ENDIAN)
                    val tag = ByteArray(4).also(recordBuffer::get)
                    require(tag.contentEquals(byteArrayOf(70, 82, 77, 49))) { "E_STAGED_FALLBACK_CORRUPT" }
                    val ptsUs = recordBuffer.long
                    val payloadLength = recordBuffer.long
                    val expectedLength = stageHeader.width.toLong() * stageHeader.height * 3L / 2L
                    require(ptsUs >= 0 && payloadLength == expectedLength) { "E_STAGED_FALLBACK_CORRUPT" }
                    require(ptsUs >= previousPtsUs) { "E_STAGED_FALLBACK_CORRUPT" }
                    require(payloadLength <= Int.MAX_VALUE && payloadLength <= stage.length() - stage.filePointer) { "E_STAGED_FALLBACK_CORRUPT" }
                    val frame = ByteArray(payloadLength.toInt())
                    stage.readFully(frame)
                    val inputIndex = awaitInputBuffer(codec) { drainAvailableOutput() }
                    val image = codec.getInputImage(inputIndex) ?: error("E_ENCODER_YUV_INPUT_UNAVAILABLE")
                    try {
                        copyNv12ToImage(frame, image, stageHeader.width, stageHeader.height)
                    } finally {
                        image.close()
                    }
                    codec.queueInputBuffer(inputIndex, 0, expectedLength.toInt(), ptsUs, 0)
                    previousPtsUs = ptsUs
                    lastVideoPtsUs = ptsUs
                    frameIndex++
                    drainAvailableOutput()
                }
                require(stage.filePointer == stage.length()) { "E_STAGED_FALLBACK_CORRUPT" }
                val eosIndex = awaitInputBuffer(codec) { drainAvailableOutput() }
                codec.queueInputBuffer(eosIndex, 0, 0, lastVideoPtsUs + 1_000_000L / stageHeader.fps, MediaCodec.BUFFER_FLAG_END_OF_STREAM)
                inputEos = true
            }
            val deadline = System.nanoTime() + ENCODER_EOS_TIMEOUT_NS
            while (!videoEos && System.nanoTime() < deadline) {
                awaitUnpaused()
                drainAvailableOutput(waitForOutput = true)
            }
            check(inputEos && videoEos && videoFormatReady) { "E_ENCODER_TIMEOUT" }
            flushAudioThrough(lastVideoPtsUs + 1_000_000L / stageHeader.fps)
            muxer!!.close()
            muxer = null
            muxerOutput?.close()
            muxerOutput = null
            check(output.isFile && output.length() > 0) { "E_EMPTY_OUTPUT" }
            check(hasFastStartLayout(output)) { "E_OUTPUT_NOT_STREAMABLE" }
            onProgress(1.0)
            return true
        } catch (error: Exception) {
            output.delete()
            throw error
        } finally {
            runCatching { muxer?.close() }
            runCatching { muxerOutput?.close() }
            runCatching { codec.stop() }
            codec.release()
            audio?.release()
        }
    }

    private fun selectAvcEncoder(width: Int, height: Int, request: EncodeConfiguration): MediaCodecInfo {
        val encoders = MediaCodecList(MediaCodecList.REGULAR_CODECS).codecInfos.filter { info ->
            info.isEncoder && info.supportedTypes.any { it.equals(MimeTypes.VIDEO_H264, true) } &&
                info.getCapabilitiesForType(MimeTypes.VIDEO_H264).let { caps ->
                    caps.colorFormats.contains(MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Flexible) &&
                        caps.videoCapabilities?.areSizeAndRateSupported(width, height, request.frameRate) == true &&
                        caps.videoCapabilities?.bitrateRange?.contains(request.targetVideoBitrateBps.toInt()) == true
                }
        }
        return encoders.firstOrNull { EncoderUtil.isHardwareAccelerated(it, MimeTypes.VIDEO_H264) }
            ?: throw IllegalStateException("E_HARDWARE_ENCODER_UNSUPPORTED")
    }

    private fun readAudioTrack(inputPath: String, includeAudio: Boolean): AudioTrackInfo {
        if (!includeAudio) return AudioTrackInfo(null, -1, null)
        val extractor = MediaExtractor()
        try {
            if (inputPath.startsWith("content://")) {
                context.contentResolver.openFileDescriptor(android.net.Uri.parse(inputPath), "r")!!.use {
                    extractor.setDataSource(it.fileDescriptor)
                }
            } else {
                extractor.setDataSource(inputPath)
            }
            for (index in 0 until extractor.trackCount) {
                val format = extractor.getTrackFormat(index)
                if (format.getString(MediaFormat.KEY_MIME)?.startsWith("audio/") == true) {
                    if (format.getString(MediaFormat.KEY_MIME) != MimeTypes.AUDIO_AAC) {
                        extractor.release()
                        throw IllegalStateException("E_STAGED_FALLBACK_AUDIO_UNSUPPORTED")
                    }
                    extractor.selectTrack(index)
                    return AudioTrackInfo(extractor, index, format)
                }
            }
            extractor.release()
            return AudioTrackInfo(null, -1, null)
        } catch (error: Exception) {
            runCatching { extractor.release() }
            throw error
        }
    }

    private fun copyNv12ToImage(frame: ByteArray, image: android.media.Image, width: Int, height: Int) {
        require(image.width == width && image.height == height && image.planes.size == 3) { "E_ENCODER_YUV_LAYOUT" }
        val ySize = width * height
        val planes = image.planes
        for (row in 0 until height) {
            val target = planes[0].buffer
            for (column in 0 until width) target.put(row * planes[0].rowStride + column * planes[0].pixelStride, frame[row * width + column])
        }
        val chromaWidth = width / 2
        val chromaHeight = height / 2
        for (row in 0 until chromaHeight) {
            for (column in 0 until chromaWidth) {
                val source = ySize + row * width + column * 2
                val u = frame[source]
                val v = frame[source + 1]
                planes[1].buffer.put(row * planes[1].rowStride + column * planes[1].pixelStride, u)
                planes[2].buffer.put(row * planes[2].rowStride + column * planes[2].pixelStride, v)
            }
        }
    }

    private fun drainEncoder(
        codec: MediaCodec,
        output: (MediaFormat) -> Unit,
        sample: (ByteBuffer, MediaCodec.BufferInfo) -> Unit,
        waitForOutput: Boolean = false,
    ) {
        val info = MediaCodec.BufferInfo()
        var first = true
        while (true) {
            when (val index = codec.dequeueOutputBuffer(info, if (first && waitForOutput) TIMEOUT_US else 0)) {
                MediaCodec.INFO_TRY_AGAIN_LATER -> return
                MediaCodec.INFO_OUTPUT_FORMAT_CHANGED -> output(codec.outputFormat)
                MediaCodec.INFO_OUTPUT_BUFFERS_CHANGED -> Unit
                else -> if (index >= 0) {
                    val buffer = codec.getOutputBuffer(index) ?: error("E_ENCODER_OUTPUT_UNAVAILABLE")
                    buffer.position(info.offset)
                    buffer.limit(info.offset + info.size)
                    val data = ByteBuffer.allocateDirect(info.size)
                    data.put(buffer).flip()
                    try { sample(data, info) } finally { codec.releaseOutputBuffer(index, false) }
                    if ((info.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) return
                }
            }
            first = false
        }
    }

    private fun awaitInputBuffer(codec: MediaCodec, drain: () -> Unit): Int {
        val deadline = System.nanoTime() + INPUT_BUFFER_TIMEOUT_NS
        while (System.nanoTime() < deadline) {
            awaitUnpaused()
            val index = codec.dequeueInputBuffer(TIMEOUT_US)
            if (index >= 0) return index
            drain()
        }
        throw IllegalStateException("E_ENCODER_INPUT_TIMEOUT")
    }

    private fun awaitUnpaused() {
        while (isPaused()) {
            check(!isCancelled()) { "E_CANCELLED" }
            Thread.sleep(PAUSE_POLL_MS)
        }
        check(!isCancelled()) { "E_CANCELLED" }
    }

    private fun writeVideoSample(
        data: ByteBuffer,
        info: MediaCodec.BufferInfo,
        videoTrack: Int,
        muxer: Mp4Muxer,
        flushAudio: (Long) -> Unit,
        header: StageHeader,
    ) {
        if (info.size == 0 || (info.flags and MediaCodec.BUFFER_FLAG_CODEC_CONFIG) != 0) return
        flushAudio(info.presentationTimeUs)
        muxer.writeSampleData(
            videoTrack,
            data,
            BufferInfo(info.presentationTimeUs, info.size, info.flags and MediaCodec.BUFFER_FLAG_KEY_FRAME),
        )
        val durationUs = (header.frameCount * 1_000_000L) / header.fps
        onProgress((info.presentationTimeUs.toDouble() / max(1L, durationUs)).coerceIn(0.0, 0.99))
    }

    private fun readHeader(file: File): StageHeader = RandomAccessFile(file, "r").use { input ->
        require(input.length() >= HEADER_SIZE) { "E_STAGED_FALLBACK_CORRUPT" }
        val bytes = ByteArray(HEADER_SIZE)
        input.readFully(bytes)
        val data = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
        val magic = ByteArray(8).also(data::get)
        require(magic.contentEquals(byteArrayOf(90, 85, 77, 73, 89, 85, 86, 0))) { "E_STAGED_FALLBACK_CORRUPT" }
        require(data.short.toInt() == 1 && data.short.toInt() == HEADER_SIZE && data.int > 0) { "E_STAGED_FALLBACK_VERSION" }
        val width = ByteBuffer.wrap(bytes, 12, 4).order(ByteOrder.LITTLE_ENDIAN).int
        val height = ByteBuffer.wrap(bytes, 16, 4).order(ByteOrder.LITTLE_ENDIAN).int
        val fps = ByteBuffer.wrap(bytes, 20, 4).order(ByteOrder.LITTLE_ENDIAN).int
        val layout = ByteBuffer.wrap(bytes, 24, 4).order(ByteOrder.LITTLE_ENDIAN).int
        val frameCount = ByteBuffer.wrap(bytes, 28, 8).order(ByteOrder.LITTLE_ENDIAN).long
        val frameSize = width.toLong() * height * 3L / 2L
        require(width >= 2 && height >= 2 && width % 2 == 0 && height % 2 == 0 &&
            fps in 1..120 && layout == 1 && frameCount > 0 && frameSize <= Int.MAX_VALUE &&
            frameCount <= (input.length() - HEADER_SIZE) / (20L + frameSize)) {
            "E_STAGED_FALLBACK_CORRUPT"
        }
        StageHeader(width, height, fps, frameCount)
    }

    private fun hasFastStartLayout(file: File): Boolean = RandomAccessFile(file, "r").use { input ->
        var sawMoov = false
        while (input.filePointer + 8 <= input.length()) {
            val start = input.filePointer
            val size32 = input.readInt().toLong() and 0xffff_ffffL
            val typeBytes = ByteArray(4)
            input.readFully(typeBytes)
            val type = String(typeBytes, Charsets.US_ASCII)
            val headerSize: Long
            val boxSize: Long
            when (size32) {
                0L -> {
                    headerSize = 8
                    boxSize = input.length() - start
                }
                1L -> {
                    if (input.filePointer + 8 > input.length()) return@use false
                    headerSize = 16
                    boxSize = input.readLong()
                }
                else -> {
                    headerSize = 8
                    boxSize = size32
                }
            }
            if (boxSize < headerSize || start + boxSize > input.length()) return@use false
            if (type == "moov") sawMoov = true
            if (type == "mdat") return@use sawMoov
            input.seek(start + boxSize)
        }
        false
    }

    private data class StageHeader(val width: Int, val height: Int, val fps: Int, val frameCount: Long)
    private data class AudioTrackInfo(val extractor: MediaExtractor?, val trackIndex: Int, val format: MediaFormat?)
    private data class AudioSample(val data: ByteBuffer, val ptsUs: Long, val flags: Int)

    private companion object {
        const val HEADER_SIZE = 36
        const val TIMEOUT_US = 10_000L
        const val INPUT_BUFFER_TIMEOUT_NS = 5_000_000_000L
        const val ENCODER_EOS_TIMEOUT_NS = 15_000_000_000L
        const val MAX_AUDIO_SAMPLE_BYTES = 64L * 1024L * 1024L
        const val PAUSE_POLL_MS = 50L
    }
}
