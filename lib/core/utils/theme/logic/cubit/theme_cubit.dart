import 'package:bloc_signals_hydrate/bloc_signals_hydrate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:material_ui/material_ui.dart';

import '../../app_theme.dart';

part 'theme_cubit.freezed.dart';
part 'theme_state.dart';

@lazySingleton
class ThemeCubit extends HydratedCubitSignal<ThemeState> {
  ThemeCubit() : super(initialState: const ThemeState());

  @override
  ThemeState? fromJson(dynamic json) {
    if (json is! Map<String, dynamic>) return null;

    final themeModeName = json['themeMode'];
    final themeMode = ThemeMode.values.firstWhere(
      (mode) => mode.name == themeModeName,
      orElse: () => ThemeMode.system,
    );
    final highContrast = json['highContrast'];
    final variantName = json['colorSchemeVariant'];
    final variant = KuymoColorSchemeVariant.values.firstWhere(
      (value) => value.name == variantName,
      orElse: () => KuymoColorSchemeVariant.auto,
    );

    return ThemeState(
      themeMode: themeMode,
      highContrast: highContrast is bool ? highContrast : false,
      colorSchemeVariant: variant,
    );
  }

  @override
  Map<String, dynamic> toJson(ThemeState state) => {
    'themeMode': state.themeMode.name,
    'highContrast': state.highContrast,
    'colorSchemeVariant': state.colorSchemeVariant.name,
  };

  void changeTheme(ThemeMode newMode) {
    if (state.value.themeMode == newMode) return;
    emit(state.value.copyWith(themeMode: newMode));
  }

  void changeHighContrast(bool enabled) {
    if (state.value.highContrast == enabled) return;
    emit(state.value.copyWith(highContrast: enabled));
  }

  void changeColorSchemeVariant(KuymoColorSchemeVariant variant) {
    if (state.value.colorSchemeVariant == variant) return;
    emit(state.value.copyWith(colorSchemeVariant: variant));
  }
}
