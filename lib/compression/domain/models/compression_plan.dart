final class CompressionPlan {
  const CompressionPlan({
    required this.targetVideoBitrateBps,
    required this.targetAudioBitrateBps,
    required this.targetWidth,
    required this.targetHeight,
    required this.hardLimitBytes,
    required this.safetyMargin,
    required this.maxAttempts,
    required this.isInfeasible,
    this.warningMessage,
  });
  final int targetVideoBitrateBps,
      targetAudioBitrateBps,
      targetWidth,
      targetHeight;
  final int hardLimitBytes, maxAttempts;
  final double safetyMargin;
  final bool isInfeasible;
  final String? warningMessage;
  CompressionPlan withVideoBitrate(int bitrate) => CompressionPlan(
    targetVideoBitrateBps: bitrate,
    targetAudioBitrateBps: targetAudioBitrateBps,
    targetWidth: targetWidth,
    targetHeight: targetHeight,
    hardLimitBytes: hardLimitBytes,
    safetyMargin: safetyMargin,
    maxAttempts: maxAttempts,
    isInfeasible: isInfeasible,
    warningMessage: warningMessage,
  );
}
