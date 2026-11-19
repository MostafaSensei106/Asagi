import 'dart:async';
import 'dart:io';

import 'package:asagi/core/compression/application/compression_engine.dart';
import 'package:asagi/core/compression/domain/contracts/video_encoder.dart';
import 'package:asagi/core/compression/domain/models/compression_output.dart';
import 'package:asagi/core/compression/domain/models/compression_preferences.dart';
import 'package:asagi/core/compression/domain/models/encode_request.dart';
import 'package:asagi/core/compression/domain/models/video_metadata.dart';
import 'package:asagi/core/compression/infrastructure/storage/file_artifact_store.dart';
import 'package:flutter_test/flutter_test.dart';

import 'compression_engine_test.dart' show Planner;

class ControlledEncoder implements VideoEncoder {
  final started = Completer<void>();
  final completion = Completer<void>();
  Completer<void>? metadataGate;
  int pauses = 0, resumes = 0, cancels = 0;
  bool hdr = false, mismatch = false, dropHdr = false;
  int sourceBytes = 1000;
  EncodeRequest? request;
  @override
  Future<VideoMetadata> inspect(String path) async {
    if (path == 'input') await metadataGate?.future;
    final input = path == 'input';
    final outputHdr =
        !dropHdr && (mismatch || request?.hdrMode == HdrMode.preserve);
    return VideoMetadata(
      durationSecs: 60,
      width: 1920,
      height: 1080,
      rotation: 0,
      bitrateBps: 10000000,
      fileSizeBytes: input ? sourceBytes : 90,
      hasAudio: false,
      isHdr: hdr && (input || outputHdr),
      colorTransfer: hdr && (input || outputHdr) ? 'hlg' : 'sdr',
    );
  }

  @override
  Future<void> encode(EncodeRequest request) async {
    this.request = request;
    await File(request.outputPath).writeAsBytes(List.filled(90, 0));
    started.complete();
    await completion.future;
  }

  @override
  Future<void> pause() async {
    pauses++;
  }

  @override
  Future<void> resume() async {
    resumes++;
  }

  @override
  Future<void> cancel() async {
    cancels++;
    if (!completion.isCompleted) {
      completion.completeError(StateError('E_CANCELLED'));
    }
  }
}

void main() {
  late Directory directory;
  late ControlledEncoder encoder;
  late CompressionEngine engine;
  setUp(() async {
    directory = await Directory.systemTemp.createTemp('asagi-control-');
    encoder = ControlledEncoder();
    engine = CompressionEngine(
      planner: Planner(),
      encoder: encoder,
      artifacts: const FileArtifactStore(),
    );
  });
  tearDown(() async {
    await directory.delete(recursive: true);
  });
  Future<CompressionOutput> run({
    HdrMode mode = HdrMode.toneMapToSdr,
    CompressionPreferences preferences = const CompressionPreferences(),
  }) => engine.compress(
    source: 'input',
    targetMb: 1,
    workspacePath: directory.path,
    hdrMode: mode,
    preferences: preferences,
  );
  test(
    'manual audio choice encodes even when the source fits the size limit',
    () async {
      encoder.sourceBytes = 50;
      final result = run(
        preferences: const CompressionPreferences(audioBitrateKbps: 0),
      );
      await encoder.started.future;
      encoder.completion.complete();
      expect((await result).attempts, 1);
    },
  );
  test(
    'pause blocks result publication; resume preserves the attempt',
    () async {
      var published = false;
      final result = run().then((r) {
        published = true;
        return r;
      });
      await encoder.started.future;
      await engine.pause();
      encoder.completion.complete();
      await Future<void>.delayed(Duration.zero);
      expect(published, false);
      await engine.resume();
      expect((await result).attempts, 1);
      expect(encoder.pauses, 1);
      // Native work has finished already, so resume only releases publication.
      expect(encoder.resumes, 0);
    },
  );
  test('pause/resume reach the active encoder and are idempotent', () async {
    final result = run();
    await encoder.started.future;
    await engine.pause();
    await engine.pause();
    await engine.resume();
    await engine.resume();
    expect(encoder.pauses, 1);
    expect(encoder.resumes, 1);
    encoder.completion.complete();
    await result;
  });
  test(
    'cancel while paused unblocks job and deletes partial artifacts',
    () async {
      final result = run();
      final failure = expectLater(result, throwsStateError);
      await encoder.started.future;
      await engine.pause();
      await engine.cancel();
      await failure;
      expect(encoder.cancels, 1);
      expect(await directory.list().length, 0);
    },
  );
  test(
    'pause during inspection prevents encoder startup until resumed',
    () async {
      encoder.metadataGate = Completer<void>();
      final result = run();
      await engine.pause();
      encoder.metadataGate!.complete();
      await Future<void>.delayed(Duration.zero);
      expect(encoder.started.isCompleted, false);
      await engine.resume();
      await encoder.started.future;
      encoder.completion.complete();
      await result;
    },
  );
  test('HDR mode reaches encoder and preservation is verified', () async {
    encoder.hdr = true;
    final result = run(mode: HdrMode.preserve);
    await encoder.started.future;
    expect(encoder.request!.hdrMode, HdrMode.preserve);
    encoder.completion.complete();
    await result;
  });
  test('explicit HDR conversion runs even if source fits target', () async {
    encoder.hdr = true;
    encoder.sourceBytes = 50;
    final result = run();
    await encoder.started.future;
    expect(encoder.request!.hdrMode, HdrMode.toneMapToSdr);
    encoder.completion.complete();
    expect((await result).attempts, 1);
  });
  test('failed HDR conversion cannot publish a successful artifact', () async {
    encoder.hdr = true;
    encoder.mismatch = true;
    final result = run();
    final failure = expectLater(result, throwsStateError);
    await encoder.started.future;
    encoder.completion.complete();
    await failure;
    expect(await directory.list().length, 0);
  });
  test(
    'preserve rejects an encoder that silently downgrades HDR to SDR',
    () async {
      encoder.hdr = true;
      encoder.dropHdr = true;
      final result = run(mode: HdrMode.preserve);
      final failure = expectLater(result, throwsStateError);
      await encoder.started.future;
      encoder.completion.complete();
      await failure;
      expect(await directory.list().length, 0);
    },
  );
}
