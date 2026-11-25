part of 'theme_cubit.dart';

@freezed
sealed class ThemeState with _$ThemeState {
  const factory ThemeState({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(false) bool highContrast,
    @Default(KuymoColorSchemeVariant.auto)
    KuymoColorSchemeVariant colorSchemeVariant,
  }) = _ThemeState;
}
