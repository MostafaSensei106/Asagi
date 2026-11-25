import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/compression/domain/models/compression_preferences.dart';
import 'package:kuymo/core/compression/domain/models/share_preset.dart';
import 'package:kuymo/core/compression/domain/models/video_metadata.dart';
import 'package:kuymo/core/compression/infrastructure/native/platform_compression_planner.dart';
import 'package:kuymo/core/native/pigeon_messages.g.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const metadata = VideoMetadata(
    durationSecs: 60,
    width: 1440,
    height: 1080,
    rotation: 90,
    bitrateBps: 16000000,
    fileSizeBytes: 120000000,
    hasAudio: true,
    pixelAspectRatio: 4 / 3,
  );
  final plan = NativeCompressionPlan(
    targetVideoBitrateBps: 1836160,
    targetAudioBitrateBps: 128000,
    targetWidth: 720,
    targetHeight: 1280,
    hardLimitBytes: 16000000,
    safetyMargin: 0.93,
    maxAttempts: 2,
    isInfeasible: false,
    warningMessage: 'LOW_QUALITY',
  );
  final messenger =
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
  final channels = <String>[];
  void handle(String method, Future<Object?> Function(Object?) callback) {
    final name = 'dev.flutter.pigeon.kuymo.NativeCompressionPlannerApi.$method';
    channels.add(name);
    messenger.setMockDecodedMessageHandler<Object?>(
      BasicMessageChannel<Object?>(
        name,
        NativeCompressionPlannerApi.pigeonChannelCodec,
      ),
      (message) async => callback(message),
    );
  }

  late PlatformCompressionPlanner planner;
  setUp(() {
    planner = PlatformCompressionPlanner(NativeCompressionPlannerApi());
  });
  tearDown(() {
    for (final name in channels) {
      messenger.setMockMessageHandler(name, null);
    }
    channels.clear();
  });

  test(
    'planning maps metadata, custom limits, force encode, and warning',
    () async {
      handle('plan', (message) async {
        final args = message! as List<Object?>;
        final source = args[0]! as NativePlanningMetadata;
        final preferences = args[3]! as NativePlanningPreferences;
        expect(source.pixelAspectRatio, 4 / 3);
        expect(source.rotation, 90);
        expect(source.fileSizeBytes, 120000000);
        expect(args[1], 16.0);
        expect(args[2], 0.93);
        expect(preferences.forceEncode, isTrue);
        expect(preferences.maxShortEdge, 480);
        expect(preferences.audioBitrateBps, 64000);
        expect(preferences.videoBitrateCeilingBps, 800000);
        return [plan];
      });
      final result = await planner.plan(
        metadata,
        16,
        preferences: const CompressionPreferences(
          maxShortEdge: 480,
          audioBitrateKbps: 64,
          videoBitrateCeilingKbps: 800,
          safetyMargin: 0.93,
        ),
      );
      expect(result.targetVideoBitrateBps, 1836160);
      expect(result.targetWidth, 720);
      expect(result.hardLimitBytes, 16000000);
      expect(result.warningMessage, 'LOW_QUALITY');
      handle('verify', (message) async {
        final args = message! as List<Object?>;
        expect(args[0], 18000000);
        expect(args[1], 60.0);
        final wirePlan = args[2]! as NativeCompressionPlan;
        expect(wirePlan.hardLimitBytes, 16000000);
        expect(wirePlan.warningMessage, 'LOW_QUALITY');
        expect(args[3], 1);
        return [1500000];
      });
      expect(await planner.verify(18000000, 60, result, 1), 1500000);
    },
  );

  test(
    'presets cache and every identifier and tier maps over the channel',
    () async {
      var calls = 0;
      handle('presets', (_) async {
        calls++;
        return [
          NativeSharePresetId.values
              .map(
                (id) => NativeSharePreset(
                  id: id,
                  targetMb: 16,
                  relaxedTargetMb: 64,
                  maxShortEdge: 720,
                  maxFps: 30,
                  bitrateCapBps: 2500000,
                  requireFaststart: true,
                  verifiedOn: '2026-11-16',
                ),
              )
              .toList(),
        ];
      });
      final presets = await planner.presets();
      expect(presets.map((p) => p.id), SharePresetId.values);
      expect(presets.first.videoBitrateCeilingKbps, 2500);
      expect(presets.first.requireFaststart, isTrue);
      expect(() => presets.clear(), throwsUnsupportedError);
      await planner.presets();
      expect(calls, 1);
      for (final id in SharePresetId.values) {
        for (final tier in NativeSharePresetTier.values) {
          handle('resolvePreset', (message) async {
            final args = message! as List<Object?>;
            expect((args[1]! as NativeSharePresetId).name, id.name);
            return [
              NativeSharePresetPlan(
                tier: tier,
                effectiveTargetMb: 64,
                plan: plan,
              ),
            ];
          });
          final resolved = await planner.resolvePreset(metadata, id);
          expect(resolved.preset.id, id);
          expect(resolved.tier.name, tier.name);
          expect(resolved.effectiveTargetMb, 64);
        }
      }
    },
  );

  test('native errors keep their stable codes', () async {
    handle('plan', (_) async => ['E_INVALID_INPUT', 'E_INVALID_INPUT', null]);
    await expectLater(
      planner.plan(metadata, 16),
      throwsA(
        isA<PlatformException>().having(
          (e) => e.code,
          'code',
          'E_INVALID_INPUT',
        ),
      ),
    );
    handle(
      'verify',
      (_) async => ['E_TARGET_EXCEEDED', 'E_TARGET_EXCEEDED', null],
    );
    handle('plan', (_) async => [plan]);
    final p = await planner.plan(metadata, 16);
    await expectLater(
      planner.verify(18000000, 60, p, 2),
      throwsA(
        isA<PlatformException>().having(
          (e) => e.code,
          'code',
          'E_TARGET_EXCEEDED',
        ),
      ),
    );
  });
}
