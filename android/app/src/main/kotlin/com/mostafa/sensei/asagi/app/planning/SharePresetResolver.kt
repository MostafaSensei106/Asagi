package com.mostafa.sensei.asagi.app.planning

internal class SharePresetResolver(private val planner: TargetSizePlanner) {
    val presets: List<SharePreset> = listOf(
        SharePreset(PresetId.WHATSAPP, 16, 64, 720, 30, 2_500_000, false),
        SharePreset(PresetId.WHATSAPP_HD, 64, 128, 1080, 30, 6_000_000, false),
        SharePreset(PresetId.DISCORD, 10, 25, 720, 30, 2_500_000, false),
        SharePreset(PresetId.INSTAGRAM_REELS, 30, 100, 1080, 30, 5_000_000, false),
        SharePreset(PresetId.TIK_TOK, 50, 200, 1080, 60, 6_000_000, false),
        SharePreset(PresetId.FACEBOOK, 50, 200, 1080, 30, 4_500_000, false),
        SharePreset(PresetId.X, 512, 512, 1080, 60, 8_000_000, true),
        SharePreset(PresetId.YOU_TUBE_SHORTS, 100, 400, 1080, 60, 8_000_000, true),
        SharePreset(PresetId.EMAIL, 25, 25, 720, 30, 4_000_000, false),
    )

    fun resolve(info: PlanningMetadata, id: PresetId, safety: Double = 0.98): SharePresetPlan {
        require(safety in 0.90..0.98) { "E_INVALID_PREFERENCES" }
        val preset = presets.first { it.id == id }
        val attempts = listOf(
            Triple(preset.targetMb, preset.maxShortEdge, PresetTier.EXACT),
            Triple(preset.relaxedTargetMb, preset.maxShortEdge, PresetTier.RELAXED_SIZE),
            Triple(preset.relaxedTargetMb, 0L, PresetTier.RELAXED_SIZE),
        )
        var last: CompressionPlan? = null
        for ((target, edge, tier) in attempts) {
            val plan = planner.planBytes(info, target * 1_000_000, safety,
                PlanningPreferences(maxShortEdge = edge, videoBitrateCeilingBps = preset.bitrateCapBps))
            if (plan.isInfeasible || plan.warningMessage == "TARGET_SIZE_UNREACHABLE") { last = plan; continue }
            val resolvedTier = if (tier == PresetTier.EXACT && plan.warningMessage == "LOW_QUALITY") PresetTier.REDUCED_QUALITY else tier
            return SharePresetPlan(resolvedTier, target, plan)
        }
        return SharePresetPlan(PresetTier.UNSATISFIABLE, preset.relaxedTargetMb, requireNotNull(last))
    }
}
