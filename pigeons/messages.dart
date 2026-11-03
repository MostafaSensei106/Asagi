import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/native/pigeon_messages.g.dart',
    kotlinOut: 'android/app/src/main/kotlin/com/mostafa/sensei/zumi/Native/PigeonMessages.g.kt',
    kotlinOptions: KotlinOptions(package: 'com.mostafa.sensei.zumi'),
    swiftOut: 'ios/Runner/Native/PigeonMessages.g.swift',
  ),
)
final class NativeVideoMetadata {
  String? path;
  double? durationSeconds;
  int? width;
  int? height;
  int? rotation;
  int? bitrateBps;
  double? frameRate;
  bool? hasAudio;
}

final class NativeCompressRequest {
  String? inputPath;
  String? outputPath;
  int? targetVideoBitrateBps;
  int? targetAudioBitrateBps;
  int? targetWidth;
  int? targetHeight;
}

@HostApi()
abstract class NativeMediaApi {
  @async
  NativeVideoMetadata extractVideoMetadata(String inputPath);

  @async
  bool startHardwareEncoding(NativeCompressRequest request);
}
