package com.mostafa.sensei.kuymo.app

import android.content.Context
import android.media.MediaCodec
import android.media.MediaExtractor
import android.media.MediaFormat
import android.net.Uri
import java.io.File
import java.io.RandomAccessFile
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.abs

/** Streams PCM to bounded-duration WAV chunks, without retaining audio in RAM. */
object AiAudioDecoder {
    data class Analysis(val files: List<String>, val firstSoundUs: Long, val lastSoundUs: Long)
    fun decode(context: Context, uri: Uri, workspace: File, stopped: () -> Boolean): Analysis {
        val extractor = MediaExtractor()
        var codec: MediaCodec? = null
        var output: RandomAccessFile? = null
        val files = mutableListOf<String>()
        var first = -1L
        var last = -1L
        var chunkBytes = 0
        var rate = 16000
        var channels = 1
        fun finish() {
            output?.let { file ->
                val header = ByteBuffer.allocate(44).order(ByteOrder.LITTLE_ENDIAN)
                header.put("RIFF".toByteArray()).putInt(36 + chunkBytes).put("WAVEfmt ".toByteArray())
                    .putInt(16).putShort(1).putShort(channels.toShort()).putInt(rate)
                    .putInt(rate * channels * 2).putShort((channels * 2).toShort()).putShort(16)
                    .put("data".toByteArray()).putInt(chunkBytes)
                file.seek(0); file.write(header.array()); file.close()
            }
            output = null; chunkBytes = 0
        }
        try {
            extractor.setDataSource(context, uri, null)
            val track = (0 until extractor.trackCount).firstOrNull {
                extractor.getTrackFormat(it).getString(MediaFormat.KEY_MIME)?.startsWith("audio/") == true
            } ?: return Analysis(emptyList(), -1, -1)
            extractor.selectTrack(track)
            val format = extractor.getTrackFormat(track)
            rate = format.getInteger(MediaFormat.KEY_SAMPLE_RATE)
            channels = format.getInteger(MediaFormat.KEY_CHANNEL_COUNT)
            val decoder = MediaCodec.createDecoderByType(format.getString(MediaFormat.KEY_MIME)!!)
            codec = decoder
            decoder.configure(format, null, null, 0); decoder.start()
            val info = MediaCodec.BufferInfo()
            var inputEnded = false
            var ended = false
            var idle = 0
            while (!ended) {
                check(!stopped()) { "E_AI_CANCELLED" }
                var progressed = false
                if (!inputEnded) {
                    val index = decoder.dequeueInputBuffer(10000)
                    if (index >= 0) {
                        val input = decoder.getInputBuffer(index)!!
                        val size = extractor.readSampleData(input, 0)
                        if (size < 0) {
                            decoder.queueInputBuffer(index, 0, 0, 0, MediaCodec.BUFFER_FLAG_END_OF_STREAM); inputEnded = true
                        } else {
                            decoder.queueInputBuffer(index, 0, size, extractor.sampleTime, 0); extractor.advance()
                        }
                        progressed = true
                    }
                }
                val index = decoder.dequeueOutputBuffer(info, 10000)
                if (index == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                    val actual = decoder.outputFormat
                    rate = actual.getInteger(MediaFormat.KEY_SAMPLE_RATE)
                    channels = actual.getInteger(MediaFormat.KEY_CHANNEL_COUNT)
                    val encoding = if (actual.containsKey(MediaFormat.KEY_PCM_ENCODING)) actual.getInteger(MediaFormat.KEY_PCM_ENCODING) else 2
                    require(encoding == 2) { "E_AUDIO_PCM_FORMAT" }
                    progressed = true
                } else if (index >= 0) {
                    val pcm = decoder.getOutputBuffer(index)!!.duplicate().order(ByteOrder.LITTLE_ENDIAN)
                    pcm.position(info.offset); pcm.limit(info.offset + info.size)
                    val bytes = ByteArray(info.size); pcm.get(bytes)
                    val samples = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
                    var sample = 0
                    while (samples.remaining() >= 2) {
                        val amplitude = abs(samples.short.toInt())
                        val time = info.presentationTimeUs + sample.toLong() * 1_000_000 / (rate * channels)
                        if (amplitude > 600) { if (first < 0) first = time; last = time }
                        sample++
                    }
                    if (bytes.isNotEmpty()) {
                        if (output == null) {
                            val file = File(workspace, "audio_${files.size}.wav")
                            files.add(file.path); output = RandomAccessFile(file, "rw"); output!!.write(ByteArray(44))
                        }
                        output!!.write(bytes); chunkBytes += bytes.size
                        if (chunkBytes >= rate * channels * 2 * 30) finish()
                    }
                    ended = info.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM != 0
                    decoder.releaseOutputBuffer(index, false); progressed = true
                }
                idle = if (progressed) 0 else idle + 1
                check(idle < 1500) { "E_AUDIO_DECODE_TIMEOUT" }
            }
            finish()
            return Analysis(files, first, last)
        } finally {
            output?.close()
            try { codec?.stop() } catch (_: Exception) { }
            codec?.release(); extractor.release()
        }
    }
}
