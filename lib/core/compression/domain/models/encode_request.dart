import 'compression_plan.dart';

enum HdrMode { preserve, toneMapToSdr }

final class EncodeRequest {
  const EncodeRequest({
    required this.inputPath,
    required this.outputPath,
    required this.plan,
    required this.frameRate,
    required this.hdrMode,
    this.isHdr = false,
  });
  final String inputPath, outputPath;
  final CompressionPlan plan;
  final double frameRate;
  final HdrMode hdrMode;
  final bool isHdr;
}
