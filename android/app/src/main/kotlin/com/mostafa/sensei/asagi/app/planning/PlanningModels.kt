package com.mostafa.sensei.asagi.app.planning

internal data class PlanningMetadata(
    val durationSecs: Double, val width: Long, val height: Long, val rotation: Long,
    val bitrateBps: Long, val fileSizeBytes: Long, val hasAudio: Boolean,
    val pixelAspectRatio: Double,
) {
    val displayWidth: Double get() = width * pixelAspectRatio
    val displayShortEdge: Double get() = minOf(displayWidth, height.toDouble())
}

internal data class PlanningPreferences(
    val forceEncode: Boolean = false, val maxShortEdge: Long = 0,
    val audioBitrateBps: Long = -1, val videoBitrateCeilingBps: Long = 0,
)

internal data class CompressionPlan(
    val targetVideoBitrateBps: Long, val targetAudioBitrateBps: Long,
    val targetWidth: Long, val targetHeight: Long, val hardLimitBytes: Long,
    val safetyMargin: Double, val maxAttempts: Long = 2,
    val isInfeasible: Boolean = false, val warningMessage: String? = null,
)

internal enum class PresetId { WHATSAPP, WHATSAPP_HD, DISCORD, INSTAGRAM_REELS, TIK_TOK, FACEBOOK, X, YOU_TUBE_SHORTS, EMAIL }
internal enum class PresetTier { EXACT, REDUCED_QUALITY, RELAXED_SIZE, UNSATISFIABLE }
internal data class SharePreset(
    val id: PresetId, val targetMb: Long, val relaxedTargetMb: Long,
    val maxShortEdge: Long, val maxFps: Long, val bitrateCapBps: Long,
    val requireFaststart: Boolean, val verifiedOn: String = "2026-11-16",
)
internal data class SharePresetPlan(val tier: PresetTier, val effectiveTargetMb: Long, val plan: CompressionPlan)
