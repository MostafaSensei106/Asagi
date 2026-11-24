import 'package:freezed_annotation/freezed_annotation.dart';

part 'haptic_settings.freezed.dart';

@freezed
sealed class HapticSettings with _$HapticSettings {
  const factory HapticSettings({
    @Default(true) bool buttons,
    @Default(true) bool selections,
    @Default(true) bool gestures,
    @Default(true) bool success,
    @Default(true) bool errors,
  }) = _HapticSettings;
}
