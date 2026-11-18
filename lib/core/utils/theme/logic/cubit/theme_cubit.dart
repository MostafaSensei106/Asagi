import 'dart:async';

import 'package:bloc_signals_hydrate/bloc_signals_hydrate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:material_ui/material_ui.dart';

import '../../data/base_theme_repository.dart';

part 'theme_cubit.freezed.dart';
part 'theme_state.dart';

@lazySingleton
class ThemeCubit extends HydratedCubitSignal<ThemeState> {
  ThemeCubit(this._repo) : super(initialState: const ThemeState()) {
    unawaited(_init());
  }

  final BaseThemeRepository _repo;

  @override
  ThemeState? fromJson(dynamic json) {
    if (json is! Map<String, dynamic>) return null;

    final themeModeName = json['themeMode'];
    final themeMode = ThemeMode.values.firstWhere(
      (mode) => mode.name == themeModeName,
      orElse: () => ThemeMode.system,
    );
    final highContrast = json['highContrast'];

    return ThemeState(
      themeMode: themeMode,
      highContrast: highContrast is bool ? highContrast : false,
    );
  }

  @override
  Map<String, dynamic> toJson(ThemeState state) => {
    'themeMode': state.themeMode.name,
    'highContrast': state.highContrast,
  };

  Future<void> _init() async {
    final themeMode = await _repo.getThemeMode();
    final highContrast = await _repo.getHighContrast();
    emit(
      state.value.copyWith(themeMode: themeMode, highContrast: highContrast),
    );
  }

  Future<void> changeTheme(ThemeMode newMode) async {
    if (state.value.themeMode == newMode) return;
    emit(state.value.copyWith(themeMode: newMode));
    await _repo.cacheThemeMode(newMode);
  }

  Future<void> changeHighContrast(bool enabled) async {
    if (state.value.highContrast == enabled) return;
    emit(state.value.copyWith(highContrast: enabled));
    await _repo.cacheHighContrast(enabled);
  }
}
