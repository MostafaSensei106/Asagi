part of 'localization_cubit.dart';

@freezed
sealed class LocalizationState with _$LocalizationState {
  const factory LocalizationState({
    required String langCode,
    @Default(false) bool failed,
  }) = _LocalizationState;
}
