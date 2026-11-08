import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:zumi/core/compression/application/compression_engine.dart';
import 'package:zumi/core/compression/domain/contracts/compression_planner.dart';
import 'package:zumi/core/compression/domain/contracts/video_encoder.dart';
import 'package:zumi/core/compression/domain/models/compression_plan.dart';
import 'package:zumi/core/compression/domain/models/encode_request.dart';
import 'package:zumi/core/compression/domain/models/video_metadata.dart';
import 'package:zumi/core/compression/infrastructure/storage/file_artifact_store.dart';

class Planner implements CompressionPlanner {
  @override
  Future<CompressionPlan> plan(VideoMetadata info, double targetMb) async =>
      const CompressionPlan(
        targetVideoBitrateBps: 1000000,
        targetAudioBitrateBps: 0,
        targetWidth: 640,
        targetHeight: 360,
        hardLimitBytes: 100,
        safetyMargin: 0.93,
        maxAttempts: 2,
        isInfeasible: false,
      );
  @override
  Future<int> verify(
    int bytes,
    double duration,
    CompressionPlan plan,
    int attempt,
  ) async {
    if (bytes <= 100) return 0;
    if (attempt == 2) throw StateError('E_TARGET_EXCEEDED');
    return 500000;
  }
}

class Encoder implements VideoEncoder {
  Encoder(this.sizes);
  final List<int> sizes;
  int calls = 0;
  @override
  Future<VideoMetadata> inspect(String path) async => const VideoMetadata(
    durationSecs: 60,
    width: 1920,
    height: 1080,
    rotation: 0,
    bitrateBps: 10000000,
    fileSizeBytes: 1000,
    hasAudio: false,
  );
  @override
  Future<void> encode(EncodeRequest request) async {
    await File(request.outputPath).writeAsBytes(List.filled(sizes[calls++], 0));
  }

  @override
  Future<void> cancel() async {}
  @override
  Future<void> pause() async {}
  @override
  Future<void> resume() async {}
}

void main() {
  late Directory directory;
  setUp(() async {
    directory = await Directory.systemTemp.createTemp('zumi-test-');
  });
  tearDown(() async {
    await directory.delete(recursive: true);
  });
  test('retry deletes oversize attempt and returns verified output', () async {
    final encoder = Encoder([120, 90]);
    final engine = CompressionEngine(
      planner: Planner(),
      encoder: encoder,
      artifacts: const FileArtifactStore(),
    );
    final result = await engine.compress(
      source: 'input',
      targetMb: 1,
      workspacePath: directory.path,
    );
    expect(result.attempts, 2);
    expect(result.bytes, 90);
    expect(
      await directory.list(recursive: true).where((f) => f is File).length,
      1,
    );
  });
  test('exhausted retries remove partial output', () async {
    final engine = CompressionEngine(
      artifacts: const FileArtifactStore(),
      planner: Planner(),
      encoder: Encoder([120, 110]),
    );
    await expectLater(
      engine.compress(
        source: 'input',
        targetMb: 1,
        workspacePath: directory.path,
      ),
      throwsStateError,
    );
    expect(await directory.list().length, 0);
  });
  test(
    'accepts hardware overshoot within the original requested limit',
    () async {
      final encoder = Encoder([110]);
      final engine = CompressionEngine(
        artifacts: const FileArtifactStore(),
        planner: Planner(),
        encoder: encoder,
      );
      final result = await engine.compress(
        source: 'input',
        targetMb: 1,
        acceptedMaxBytes: 120,
        workspacePath: directory.path,
      );
      expect(result.bytes, 110);
      expect(result.attempts, 1);
      expect(encoder.calls, 1);
    },
  );
  test(
    'stale cleanup leaves unmarked directories and source files alone',
    () async {
      final stale = await Directory('${directory.path}/zumi-stale').create();
      final marker = await File('${stale.path}/.inprogress')
          .writeAsString('{}');
      await marker.setLastModified(
        DateTime.now().subtract(const Duration(days: 1)),
      );
      await Directory('${directory.path}/zumi-unmarked').create();
      await File('${directory.path}/source.mp4').writeAsString('original');
      expect(
        await const FileArtifactStore().cleanupInterrupted(
          directory.path,
          const Duration(hours: 12),
        ),
        1,
      );
      expect(
        await Directory('${directory.path}/zumi-unmarked').exists(),
        isTrue,
      );
      expect(
        await File('${directory.path}/source.mp4').readAsString(),
        'original',
      );
    },
  );
}
