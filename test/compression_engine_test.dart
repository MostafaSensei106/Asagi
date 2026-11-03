import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:zumi/compression/compression_engine.dart';
import 'package:zumi/core/native/pigeon_messages.g.dart';
import 'package:zumi/core/native/rust/api/calculator.dart';

class Planner implements CompressionPlanner {
  @override
  Future<CalculationPlan> plan(InputMetadata info, double targetMb) async =>
      CalculationPlan(
        targetVideoBitrateBps: 1000000,
        targetAudioBitrateBps: 0,
        targetWidth: 640,
        targetHeight: 360,
        hardLimitBytes: BigInt.from(100),
        safetyMargin: 0.93,
        maxAttempts: 2,
        isInfeasible: false,
      );
  @override
  Future<int> verify(
    int bytes,
    double duration,
    CalculationPlan plan,
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
  Future<NativeVideoMetadata> inspect(String path) async => NativeVideoMetadata(
    path: path,
    durationSeconds: 60,
    width: 1920,
    height: 1080,
    rotation: 0,
    bitrateBps: 10000000,
    fileSizeBytes: 1000,
    hasAudio: false,
  );
  @override
  Future<void> encode(NativeCompressRequest request) async {
    await File(request.outputPath!)
        .writeAsBytes(List.filled(sizes[calls++], 0));
  }

  @override
  Future<void> cancel() async {}
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
    final engine = CompressionEngine(planner: Planner(), encoder: encoder);
    final result = await engine.compress(
      source: 'input',
      targetMb: 1,
      workspace: directory,
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
      planner: Planner(),
      encoder: Encoder([120, 110]),
    );
    await expectLater(
      engine.compress(source: 'input', targetMb: 1, workspace: directory),
      throwsStateError,
    );
    expect(await directory.list().length, 0);
  });
}
