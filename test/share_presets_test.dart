import 'package:flutter_test/flutter_test.dart';
import 'package:zumi/core/compression/domain/models/compression_plan.dart';
import 'package:zumi/core/compression/domain/models/share_preset.dart';

void main() {
  test('SharePreset maps ceiling values to preferences correctly', () {
    const preset = SharePreset(
      id: SharePresetId.instagramReels,
      targetMb: 30,
      relaxedTargetMb: 30,
      maxShortEdge: 1080,
      maxFps: 30,
      videoBitrateCeilingKbps: 5000,
      requireFaststart: true,
      verifiedOn: '2026-11-16',
    );

    expect(preset.id, SharePresetId.instagramReels);
    expect(preset.targetMb, 30);
    expect(preset.relaxedTargetMb, 30);
    expect(preset.maxShortEdge, 1080);
    expect(preset.maxFps, 30);
    expect(preset.videoBitrateCeilingKbps, 5000);
    expect(preset.requireFaststart, isTrue);

    final prefs = preset.preferences;
    expect(prefs.maxShortEdge, 1080);
    expect(prefs.maxFrameRate, 30);
    expect(prefs.videoBitrateCeilingKbps, 5000);
    expect(prefs.audioBitrateKbps, isNull);
  });

  test('SharePresetPlan holds preset, tier, effectiveTargetMb, and plan', () {
    const preset = SharePreset(
      id: SharePresetId.whatsapp,
      targetMb: 16,
      relaxedTargetMb: 64,
      maxShortEdge: 720,
      maxFps: 30,
      requireFaststart: false,
      verifiedOn: '2026-11-16',
    );

    const plan = CompressionPlan(
      targetVideoBitrateBps: 1800000,
      targetAudioBitrateBps: 128000,
      targetWidth: 1280,
      targetHeight: 720,
      hardLimitBytes: 16000000,
      safetyMargin: 0.93,
      maxAttempts: 2,
      isInfeasible: false,
    );

    final presetPlan = SharePresetPlan(
      preset: preset,
      tier: SharePresetTier.exact,
      effectiveTargetMb: 16,
      plan: plan,
    );

    expect(presetPlan.preset.id, SharePresetId.whatsapp);
    expect(presetPlan.tier, SharePresetTier.exact);
    expect(presetPlan.effectiveTargetMb, 16);
    expect(presetPlan.plan.targetWidth, 1280);
  });
}
