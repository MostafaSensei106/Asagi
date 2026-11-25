package com.mostafa.sensei.kuymo.app

import com.mostafa.sensei.kuymo.*
import com.mostafa.sensei.kuymo.app.planning.*

/** Maps generated transport types to pure Kotlin policies and preserves stable error codes. */
class NativeCompressionPlanner : NativeCompressionPlannerApi {
    private val planner = TargetSizePlanner()
    private val verifier = AttemptVerifier()
    private val resolver = SharePresetResolver(planner)

    override fun plan(info: NativePlanningMetadata, targetMb: Double, safetyMargin: Double?, preferences: NativePlanningPreferences): NativeCompressionPlan = errors {
        planner.plan(info.toDomain(), targetMb, safetyMargin,
            PlanningPreferences(preferences.forceEncode, preferences.maxShortEdge, preferences.audioBitrateBps, preferences.videoBitrateCeilingBps)).toWire()
    }
    override fun verify(bytes: Long, duration: Double, plan: NativeCompressionPlan, attempt: Long): Long = errors {
        verifier.verify(bytes, duration, plan.toDomain(), attempt)
    }
    override fun presets(): List<NativeSharePreset> = resolver.presets.map { p ->
        NativeSharePreset(NativeSharePresetId.valueOf(p.id.name), p.targetMb, p.relaxedTargetMb,
            p.maxShortEdge, p.maxFps, p.bitrateCapBps, p.requireFaststart, p.verifiedOn)
    }
    override fun resolvePreset(info: NativePlanningMetadata, id: NativeSharePresetId): NativeSharePresetPlan = errors {
        val resolved = resolver.resolve(info.toDomain(), PresetId.valueOf(id.name))
        NativeSharePresetPlan(NativeSharePresetTier.valueOf(resolved.tier.name), resolved.effectiveTargetMb, resolved.plan.toWire())
    }
    private fun NativePlanningMetadata.toDomain() = PlanningMetadata(durationSecs, width, height, rotation,
        bitrateBps, fileSizeBytes, hasAudio, pixelAspectRatio)
    private fun CompressionPlan.toWire() = NativeCompressionPlan(targetVideoBitrateBps, targetAudioBitrateBps,
        targetWidth, targetHeight, hardLimitBytes, safetyMargin, maxAttempts, isInfeasible, warningMessage)
    private fun NativeCompressionPlan.toDomain() = CompressionPlan(targetVideoBitrateBps, targetAudioBitrateBps,
        targetWidth, targetHeight, hardLimitBytes, safetyMargin, maxAttempts, isInfeasible, warningMessage)
    private inline fun <T> errors(block: () -> T): T = try { block() } catch (error: IllegalArgumentException) {
        throw FlutterError(error.message ?: "E_INVALID_INPUT", error.message, null)
    } catch (error: IllegalStateException) {
        throw FlutterError(error.message ?: "E_INVALID_OUTPUT", error.message, null)
    }
}
