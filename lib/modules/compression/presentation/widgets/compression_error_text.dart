import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';

/// Converts stable error codes into localized messages without exposing paths.
String compressionErrorText(BuildContext context, String? error) {
  final l10n = context.localeKeys;
  if (error == null) {
    return l10n.compressionCouldNotBeCompletedTryAnotherSettingOrVideo;
  }
  if (error.contains('E_TARGET_EXCEEDED')) {
    return l10n.thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize;
  }
  if (error.contains('E_TARGET_INFEASIBLE')) {
    return l10n.theSelectedSizeIsTooSmallForThisVideoChooseALargerSize;
  }
  if (error.contains('E_INVALID_VIDEO') ||
      error.contains('E_NO_VIDEO') ||
      error.contains('E_CORRUPT_INPUT')) {
    return l10n.thisVideoCouldNotBeReadChooseAnotherFile;
  }
  if (error.contains('E_INVALID_OUTPUT')) {
    return l10n.theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged;
  }
  if (error.contains('E_ENCODER_UNSUPPORTED')) {
    return l10n
        .thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain;
  }
  if (error.contains('E_AUDIO_DECODER_UNSUPPORTED')) {
    return l10n
        .thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource;
  }
  if (error.contains('E_VIDEO_DECODER_UNSUPPORTED')) {
    return l10n
        .thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice;
  }
  if (error.contains('E_MP4_NOT_STREAMABLE')) {
    return l10n.theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice;
  }
  if (error.contains('E_NO_SPACE')) {
    return l10n.thereIsNotEnoughFreeStorageToCompressThisVideo;
  }
  if (error.contains('E_HDR_UNSUPPORTED')) {
    return l10n.thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR;
  }
  return l10n.compressionCouldNotBeCompletedTryAnotherSettingOrVideo;
}
