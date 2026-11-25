import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/core/native/pigeon_messages.g.dart',
    kotlinOut: 'android/app/src/main/kotlin/com/mostafa/sensei/kuymo/Native/PigeonMessages.g.kt',
    kotlinOptions: KotlinOptions(package: 'com.mostafa.sensei.kuymo'),
    swiftOut: 'ios/Runner/Native/PigeonMessages.g.swift',
  ),
)
enum NativeHdrMode { preserve, toneMapToSdr }

final class NativeVideoMetadata {
  String? path;
  double? durationSeconds;
  int? width;
  int? height;
  int? rotation;
  int? bitrateBps;
  double? frameRate;
  bool? hasAudio;
  int? fileSizeBytes;
  bool? isHdr;
  String? colorTransfer;
  double? pixelAspectRatio;
}

final class NativeCompressRequest {
  String? inputPath;
  String? outputPath;
  int? targetVideoBitrateBps;
  int? targetAudioBitrateBps;
  int? targetWidth;
  int? targetHeight;
  double? frameRate;
  NativeHdrMode? hdrMode;
}

@HostApi()
abstract class NativeMediaApi {
  @async
  NativeVideoMetadata extractVideoMetadata(String inputPath);

  @async
  void cancelEncoding();

  @async
  void pauseEncoding();

  @async
  void resumeEncoding();

  @async
  bool startHardwareEncoding(NativeCompressRequest request);
}

enum NativeSharePresetId {
  whatsapp,
  whatsappHd,
  discord,
  instagramReels,
  tikTok,
  facebook,
  x,
  youTubeShorts,
  email,
}

enum NativeSharePresetTier { exact, reducedQuality, relaxedSize, unsatisfiable }

final class NativePlanningMetadata {
  late double durationSecs;
  late int width;
  late int height;
  late int rotation;
  late int bitrateBps;
  late int fileSizeBytes;
  late bool hasAudio;
  late double pixelAspectRatio;
}

final class NativePlanningPreferences {
  late bool forceEncode;
  late int maxShortEdge;
  late int audioBitrateBps;
  late int videoBitrateCeilingBps;
}

final class NativeCompressionPlan {
  late int targetVideoBitrateBps;
  late int targetAudioBitrateBps;
  late int targetWidth;
  late int targetHeight;
  late int hardLimitBytes;
  late double safetyMargin;
  late int maxAttempts;
  late bool isInfeasible;
  String? warningMessage;
}

final class NativeSharePreset {
  late NativeSharePresetId id;
  late int targetMb;
  late int relaxedTargetMb;
  late int maxShortEdge;
  late int maxFps;
  late int bitrateCapBps;
  late bool requireFaststart;
  late String verifiedOn;
}

final class NativeSharePresetPlan {
  late NativeSharePresetTier tier;
  late int effectiveTargetMb;
  late NativeCompressionPlan plan;
}

@HostApi()
abstract class NativeCompressionPlannerApi {
  NativeCompressionPlan plan(
    NativePlanningMetadata info,
    double targetMb,
    double? safetyMargin,
    NativePlanningPreferences preferences,
  );
  int verify(
    int bytes,
    double duration,
    NativeCompressionPlan plan,
    int attempt,
  );
  List<NativeSharePreset> presets();
  NativeSharePresetPlan resolvePreset(
    NativePlanningMetadata info,
    NativeSharePresetId id,
  );
}
