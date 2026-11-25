import 'package:freezed_annotation/freezed_annotation.dart';
part 'language_settings.freezed.dart';

@freezed
sealed class LanguageSettings with _$LanguageSettings {
  const factory LanguageSettings({String? localeCode}) = _LanguageSettings;
}
