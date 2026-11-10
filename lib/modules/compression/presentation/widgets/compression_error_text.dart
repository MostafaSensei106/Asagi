import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';

/// Converts stable error codes into localized messages without exposing paths.
String compressionErrorText(BuildContext context, String? error) {
  final l10n = context.localeKeys;
  if (error == null) return l10n.compressionGeneralFailure;
  if (error.contains('E_TARGET_EXCEEDED')) {
    return l10n.compressionTargetExceeded;
  }
  if (error.contains('E_TARGET_INFEASIBLE')) {
    return l10n.compressionTargetInfeasible;
  }
  if (error.contains('E_INVALID_VIDEO') ||
      error.contains('E_NO_VIDEO') ||
      error.contains('E_CORRUPT_INPUT')) {
    return l10n.compressionInvalidVideo;
  }
  if (error.contains('E_INVALID_OUTPUT')) {
    return l10n.compressionInvalidOutput;
  }
  if (error.contains('E_ENCODER_UNSUPPORTED')) {
    return l10n.compressionEncoderUnsupported;
  }
  if (error.contains('E_AUDIO_DECODER_UNSUPPORTED')) {
    return l10n.compressionAudioDecoderUnsupported;
  }
  if (error.contains('E_VIDEO_DECODER_UNSUPPORTED')) {
    return l10n.compressionVideoDecoderUnsupported;
  }
  if (error.contains('E_NO_SPACE')) {
    return l10n.compressionNoSpace;
  }
  if (error.contains('E_HDR_UNSUPPORTED')) {
    return l10n.compressionHdrUnsupported;
  }
  return l10n.compressionGeneralFailure;
}
