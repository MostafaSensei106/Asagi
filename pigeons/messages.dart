import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/core/native/pigeon_messages.g.dart',
    kotlinOut: 'android/app/src/main/kotlin/com/mostafa/sensei/zumi/Native/PigeonMessages.g.kt',
    kotlinOptions: KotlinOptions(package: 'com.mostafa.sensei.zumi'),
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
