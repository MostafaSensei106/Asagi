package com.mostafa.sensei.asagi.app.planning

import org.junit.Assert.*
import org.junit.Test
import kotlin.random.Random

class PlanningTest {
    private val planner = TargetSizePlanner()
    private val resolver = SharePresetResolver(planner)
    private val verifier = AttemptVerifier()
    private fun source(duration: Double = 60.0) = PlanningMetadata(duration, 1920, 1080, 90,
        16_000_000, 120_000_000, true, 1.0)
    private fun plan(info: PlanningMetadata = source(), mb: Double = 16.0, preferences: PlanningPreferences = PlanningPreferences()) =
        planner.plan(info, mb, 0.93, preferences)

    private fun error(code: String, block: () -> Unit) {
        try { block(); fail("Expected $code") } catch (error: IllegalArgumentException) {
            assertEquals(code, error.message)
        } catch (error: IllegalStateException) {
            assertEquals(code, error.message)
        }
    }

    @Test fun portraitBudgetMatchesOriginalPolicy() {
        val p = plan()
        assertEquals(720L, p.targetWidth)
        assertEquals(1280L, p.targetHeight)
        assertEquals(1_836_160L, p.targetVideoBitrateBps)
        assertEquals(128_000L, p.targetAudioBitrateBps)
        assertEquals(16_000_000L, p.hardLimitBytes)
        assertEquals(2L, p.maxAttempts)
    }

    @Test fun constrainedAndUnreachableTargetsKeepWarnings() {
        val p = plan(source(180.0), 8.0)
        assertEquals(64_000L, p.targetAudioBitrateBps)
        assertEquals(360L, p.targetWidth)
        assertEquals("LOW_QUALITY", p.warningMessage)
        val impossible = plan(source(600.0))
        assertFalse(impossible.isInfeasible)
        assertTrue(impossible.targetWidth > 0)
        assertEquals("TARGET_SIZE_UNREACHABLE", impossible.warningMessage)
    }

    @Test fun skipAndForceEncodePreserveTheirSemantics() {
        val small = source().copy(fileSizeBytes = 4_000_000)
        assertEquals("ALREADY_WITHIN_LIMIT", plan(small).warningMessage)
        assertEquals(1080L, plan(small).targetWidth)
        assertNotEquals("ALREADY_WITHIN_LIMIT", plan(small, preferences = PlanningPreferences(forceEncode = true)).warningMessage)
    }

    @Test fun manualLimitsAndHighResolutionAreAppliedBeforeSelection() {
        val fourK = source().copy(width = 3840, height = 2160, rotation = 0, bitrateBps = 100_000_000, fileSizeBytes = 2_000_000_000)
        assertEquals(2160L, plan(fourK, 100.0).targetHeight)
        assertEquals(4320L, plan(fourK.copy(width = 7680, height = 4320), 400.0).targetHeight)
        val limited = plan(fourK, 100.0, PlanningPreferences(true, 1440, 0, 6_000_000))
        assertTrue(limited.targetHeight <= 1440)
        assertEquals(0L, limited.targetAudioBitrateBps)
        assertEquals(6_000_000L, limited.targetVideoBitrateBps)
        assertEquals(64_000L, plan(preferences = PlanningPreferences(audioBitrateBps = 64_000)).targetAudioBitrateBps)
        assertEquals(0L, plan(source().copy(hasAudio = false)).targetAudioBitrateBps)
    }

    @Test fun anamorphicPixelsAndAllRotationsUseDisplayDimensions() {
        val square = source().copy(width = 1440, rotation = 0, bitrateBps = 0)
        assertEquals(960L, plan(square).targetWidth)
        val stretched = square.copy(pixelAspectRatio = 4.0 / 3.0)
        for (rotation in listOf(0L, 90L, 180L, 270L)) {
            val p = plan(stretched.copy(rotation = rotation))
            assertEquals(if (rotation % 180 == 0L) 1280L else 720L, p.targetWidth)
            assertEquals(if (rotation % 180 == 0L) 720L else 1280L, p.targetHeight)
        }
    }

    @Test fun invalidInputsAndPreferencesAreRejected() {
        for (duration in listOf(Double.NaN, Double.POSITIVE_INFINITY, 0.0, -1.0)) {
            error("E_INVALID_INPUT") { plan(source(duration)) }
        }
        for (sar in listOf(0.0, -1.0, Double.NaN, Double.POSITIVE_INFINITY)) {
            error("E_INVALID_INPUT") { plan(source().copy(pixelAspectRatio = sar)) }
        }
        for (mb in listOf(Double.NaN, Double.POSITIVE_INFINITY, 0.0, -1.0, Double.MAX_VALUE)) {
            error("E_INVALID_TARGET") { plan(mb = mb) }
        }
        error("E_INVALID_INPUT") { plan(source().copy(rotation = 45)) }
        error("E_INVALID_INPUT") { plan(source().copy(fileSizeBytes = 0)) }
        error("E_INVALID_PREFERENCES") { plan(preferences = PlanningPreferences(maxShortEdge = 241)) }
        error("E_INVALID_PREFERENCES") { plan(preferences = PlanningPreferences(audioBitrateBps = -2)) }
        error("E_INVALID_PREFERENCES") { plan(preferences = PlanningPreferences(videoBitrateCeilingBps = 49_999)) }
        error("E_INVALID_INPUT") { planner.plan(source(), 16.0, Double.NaN, PlanningPreferences()) }
    }

    @Test fun dimensionsAreEvenAndNeverUpscaledAcrossRandomSources() {
        val random = Random(20261124)
        repeat(1000) {
            val i = source().copy(width = random.nextLong(2, 8192), height = random.nextLong(2, 8192),
                pixelAspectRatio = random.nextDouble(1.0, 2.0), rotation = 0, durationSecs = random.nextDouble(1.0, 3600.0), hasAudio = false)
            val p = plan(i, random.nextDouble(0.001, 100.0))
            assertEquals(0L, p.targetWidth % 2)
            assertEquals(0L, p.targetHeight % 2)
            assertTrue(p.targetWidth <= i.displayWidth.toLong())
            assertTrue(p.targetHeight <= i.height)
        }
    }

    @Test fun presetTableIsCompleteAndMatchesEncoderConstraints() {
        assertEquals(PresetId.entries.toSet(), resolver.presets.map { it.id }.toSet())
        assertEquals(9, resolver.presets.size)
        for (preset in resolver.presets) {
            assertTrue(preset.maxFps in listOf(24L, 25L, 30L, 60L, 120L))
            assertTrue(preset.maxShortEdge >= 240 && preset.maxShortEdge % 2 == 0L)
            assertTrue(preset.bitrateCapBps >= 150_000)
            assertTrue(preset.relaxedTargetMb >= preset.targetMb)
            assertEquals("2026-11-16", preset.verifiedOn)
            assertTrue(resolver.resolve(source(), preset.id).plan.targetAudioBitrateBps > 0)
        }
    }

    @Test fun presetTiersAndCapsMatchOriginalBehavior() {
        val short = resolver.resolve(source(10.0).copy(width = 2160, height = 3840, rotation = 0), PresetId.INSTAGRAM_REELS, 0.93)
        assertEquals(PresetTier.EXACT, short.tier)
        assertTrue(short.plan.targetVideoBitrateBps <= 5_000_000)
        assertTrue(minOf(short.plan.targetWidth, short.plan.targetHeight) <= 1080)
        val reduced = resolver.resolve(source(180.0), PresetId.WHATSAPP, 0.93)
        assertEquals(PresetTier.REDUCED_QUALITY, reduced.tier)
        val relaxed = resolver.resolve(source(1200.0), PresetId.WHATSAPP, 0.93)
        assertEquals(PresetTier.RELAXED_SIZE, relaxed.tier)
        assertEquals(64L, relaxed.effectiveTargetMb)
        val impossible = resolver.resolve(source(28_800.0).copy(fileSizeBytes = 400_000_000), PresetId.EMAIL, 0.93)
        assertEquals(PresetTier.UNSATISFIABLE, impossible.tier)
        assertEquals("TARGET_SIZE_UNREACHABLE", impossible.plan.warningMessage)
        assertEquals(PresetTier.EXACT, resolver.resolve(source().copy(fileSizeBytes = 4_000_000), PresetId.WHATSAPP).tier)
        error("E_INVALID_INPUT") { resolver.resolve(source(Double.NaN), PresetId.WHATSAPP) }
        for (safety in listOf(Double.NaN, 0.0, 0.89, 0.99, Double.POSITIVE_INFINITY)) {
            error("E_INVALID_PREFERENCES") { resolver.resolve(source(), PresetId.WHATSAPP, safety) }
        }
    }

    @Test fun verificationAcceptsOnlyNonemptyWithinLimitAndReducesOvershoot() {
        val p = plan()
        assertEquals(0L, verifier.verify(16_000_000, 60.0, p, 1))
        assertEquals(0L, verifier.verify(16_000_000, 60.0, p, 2))
        val retry = verifier.verify(18_000_000, 60.0, p, 1)
        assertTrue(retry in 150_000 until p.targetVideoBitrateBps)
        assertEquals((p.targetVideoBitrateBps * 0.5).toLong(), verifier.verify(100_000_000, 60.0, p, 1))
        error("E_TARGET_EXCEEDED") { verifier.verify(16_000_001, 60.0, p, 2) }
        error("E_INVALID_OUTPUT") { verifier.verify(0, 60.0, p, 1) }
        error("E_INVALID_OUTPUT") { verifier.verify(100, Double.NaN, p, 1) }
        error("E_INVALID_OUTPUT") { verifier.verify(100, 60.0, p, 0) }
        error("E_TARGET_INFEASIBLE") { verifier.verify(18_000_000, 60.0, p.copy(targetVideoBitrateBps = 150_000), 1) }
        error("E_TARGET_INFEASIBLE") { verifier.verify(18_000_000, 60.0, p.copy(targetAudioBitrateBps = 4_000_000), 1) }
    }
}
