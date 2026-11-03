package com.mostafa.sensei.zumi.app.contracts

enum class HdrMode { PRESERVE, TONE_MAP_TO_SDR }
data class SourceMetadata(
    val durationSeconds: Double, val width: Long?, val height: Long?, val rotation: Long,
    val bitrateBps: Long, val frameRate: Double, val hasAudio: Boolean,
    val fileSizeBytes: Long, val isHdr: Boolean, val colorTransfer: String)
data class EncodeConfiguration(
    val inputPath: String, val outputPath: String, val targetVideoBitrateBps: Long,
    val targetAudioBitrateBps: Long, val targetWidth: Long, val targetHeight: Long,
    val frameRate: Double, val hdrMode: HdrMode)
interface VideoMetadataReader { fun read(path: String): SourceMetadata }
interface VideoEncodingBackend {
    suspend fun encode(request: EncodeConfiguration): Boolean
    suspend fun pause()
    suspend fun resume()
    suspend fun cancel()
}
interface HdrConfigurationPolicy { fun preserve(request: EncodeConfiguration, source: SourceMetadata): Boolean }
