import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../compression/domain/models/compression_preferences.dart';
part 'compression_defaults.freezed.dart';

@freezed
sealed class CompressionDefaults with _$CompressionDefaults {
  const factory CompressionDefaults({
    @Default(16) double targetMb,
    @Default(CompressionPreferences()) CompressionPreferences preferences,
  }) = _CompressionDefaults;
}
