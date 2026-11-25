package com.mostafa.sensei.kuymo.app.planning

import kotlin.math.floor
import kotlin.math.pow

/** Pure planning policy. All sizes are decimal bytes and dimensions are display pixels. */
internal class TargetSizePlanner {
    fun plan(info: PlanningMetadata, targetMb: Double, safetyMargin: Double?, preferences: PlanningPreferences): CompressionPlan {
        val bytes = targetMb * 1_000_000.0
        require(targetMb.isFinite() && targetMb > 0 && bytes < Long.MAX_VALUE.toDouble()) { "E_INVALID_TARGET" }
        // Preserve the bridge's float-to-six-decimal normalization for custom margins.
        val safety = safetyMargin?.let { floor(it.toFloat().toDouble() * 1_000_000.0 + 0.5) / 1_000_000.0 } ?: 0.98
        return planBytes(info, bytes.toLong(), safety, preferences)
    }

    fun planBytes(i: PlanningMetadata, limit: Long, safety: Double, preferences: PlanningPreferences): CompressionPlan {
        val edge = preferences.maxShortEdge
        require((edge == 0L || (edge in 240..16384 && edge % 2 == 0L)) &&
            (preferences.audioBitrateBps == -1L || preferences.audioBitrateBps in 0..320_000) &&
            (preferences.videoBitrateCeilingBps == 0L || preferences.videoBitrateCeilingBps in 50_000..UINT_MAX)) { "E_INVALID_PREFERENCES" }
        require(i.durationSecs.isFinite() && i.durationSecs > 0 && i.width in 2..UINT_MAX && i.height in 2..UINT_MAX &&
            i.pixelAspectRatio.isFinite() && i.pixelAspectRatio > 0 && i.displayShortEdge >= 2 &&
            i.fileSizeBytes > 0 && i.bitrateBps in 0..UINT_MAX && i.rotation in listOf(0L, 90L, 180L, 270L) &&
            limit > 0 && safety in 0.85..0.98) { "E_INVALID_INPUT" }
        val skip = i.fileSizeBytes <= limit && !preferences.forceEncode
        val total = limit.toDouble() * safety * 8.0 / i.durationSecs
        val overhead = maxOf(total * 0.01, 32768.0 * 8.0 / i.durationSecs)
        val audio = when {
            !i.hasAudio || preferences.audioBitrateBps == 0L -> 0L
            preferences.audioBitrateBps > 0 -> preferences.audioBitrateBps
            total - overhead - 128000.0 > 1000000.0 -> 128000L
            total - overhead - 96000.0 >= 400000.0 -> 96000L
            else -> 64000L
        }
        var video = (total - overhead - audio).coerceIn(0.0, UINT_MAX.toDouble()).toLong()
        if (i.bitrateBps > 0) video = minOf(video, (i.bitrateBps * 0.9).toLong())
        if (preferences.videoBitrateCeilingBps > 0) video = minOf(video, preferences.videoBitrateCeilingBps)
        val sourceShort = floor(i.displayShortEdge).toLong().coerceAtMost(UINT_MAX) and -2L
        val ladder = (listOf(sourceShort, 4320L, 2880L, 2160L, 1440L, 1080L, 720L, 480L, 360L, 240L))
            .filter { it >= 2 && it <= sourceShort && (edge == 0L || it <= edge) }
            .distinct().sortedDescending().map { height ->
                val (minimum, comfortable) = when (height) {
                    240L -> 150000L to 250000L
                    360L -> 250000L to 500000L
                    480L -> 400000L to 800000L
                    720L -> 700000L to 1500000L
                    1080L -> 1200000L to 2500000L
                    else -> {
                        val scale = (height / 1080.0).pow(2)
                        minOf(1200000.0 * scale, UINT_MAX.toDouble()).toLong() to
                            minOf(2500000.0 * scale, UINT_MAX.toDouble()).toLong()
                    }
                }
                Rung(height, minimum, comfortable)
            }
        val budgetFit = ladder.firstOrNull { it.height >= 480 && video >= it.comfortable }
            ?: ladder.firstOrNull { video >= it.minimum }
        val missedTarget = !skip && budgetFit == null
        val chosen = budgetFit ?: ladder.lastOrNull()
        if (missedTarget && chosen != null) {
            video = maxOf(video, chosen.minimum, 150_000)
            if (preferences.videoBitrateCeilingBps > 0) video = minOf(video, preferences.videoBitrateCeilingBps)
        }
        val low = chosen != null && video < chosen.comfortable
        val scale = if (skip) 1.0 else chosen?.let { minOf(it.height / i.displayShortEdge, 1.0) } ?: 0.0
        var width = if (skip || chosen != null) maxOf((i.displayWidth * scale).coerceAtMost(UINT_MAX.toDouble()).toLong() and -2L, 2L) else 0L
        var height = if (skip || chosen != null) maxOf((i.height * scale).toLong() and -2L, 2L) else 0L
        if (i.rotation == 90L || i.rotation == 270L) { val previous = width; width = height; height = previous }
        return CompressionPlan(video, audio, width, height, limit, safety,
            isInfeasible = !skip && chosen == null,
            warningMessage = when { skip -> "ALREADY_WITHIN_LIMIT"; missedTarget -> "TARGET_SIZE_UNREACHABLE"; low -> "LOW_QUALITY"; else -> null })
    }

    private data class Rung(val height: Long, val minimum: Long, val comfortable: Long)
    companion object { private const val UINT_MAX = 4_294_967_295L }
}
