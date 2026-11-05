import 'package:flutter_test/flutter_test.dart';
import 'package:zumi/core/compression/domain/contracts/compression_planner.dart';
import 'package:zumi/core/compression/infrastructure/rust/rust_compression_planner.dart';
import 'package:zumi/core/native/pigeon_messages.g.dart';

void main() {
  test('native request preserves compression parameters through codec', () {
    final request = NativeCompressRequest(
      inputPath: '/source.mp4',
      outputPath: '/output.mp4',
      targetVideoBitrateBps: 1836160,
      targetAudioBitrateBps: 128000,
      targetWidth: 720,
      targetHeight: 1280,
      frameRate: 30,
      hdrMode: NativeHdrMode.preserve,
    );
    final decoded = NativeCompressRequest.decode(request.encode());
    expect(decoded.targetVideoBitrateBps, 1836160);
    expect(decoded.targetHeight, 1280);
    expect(decoded.frameRate, 30);
    expect(decoded.hdrMode, NativeHdrMode.preserve);
    expect(RustCompressionPlanner(), isA<CompressionPlanner>());
  });
}
