package com.mostafa.sensei.kuymo.app.planning

internal class AttemptVerifier {
    /** Zero accepts the artifact; a positive bitrate requests another attempt. */
    fun verify(actualBytes: Long, durationSecs: Double, plan: CompressionPlan, attempt: Long): Long {
        require(plan.safetyMargin in 0.85..0.98 && plan.maxAttempts in 1..5 && plan.hardLimitBytes > 0 &&
            actualBytes > 0 && durationSecs.isFinite() && durationSecs > 0 && attempt in 1..255 &&
            plan.targetAudioBitrateBps in 0..4_294_967_295L && plan.targetVideoBitrateBps in 0..4_294_967_295L) { "E_INVALID_OUTPUT" }
        if (actualBytes <= plan.hardLimitBytes) return 0
        check(attempt < plan.maxAttempts) { "E_TARGET_EXCEEDED" }
        val reserved = plan.targetAudioBitrateBps * durationSecs / 8.0 +
            maxOf(plan.hardLimitBytes * plan.safetyMargin * 0.01, 32768.0)
        val goal = plan.hardLimitBytes * plan.safetyMargin - reserved
        check(goal > 0) { "E_TARGET_INFEASIBLE" }
        val actualVideo = maxOf(actualBytes - reserved, 1.0)
        val bitrate = (plan.targetVideoBitrateBps * (goal / actualVideo).coerceIn(0.5, 0.98)).toLong()
        check(bitrate >= 150000) { "E_TARGET_INFEASIBLE" }
        return bitrate
    }
}
