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

  Future<void> _init() async {
    final themeMode = await _repo.getThemeMode();
    emit(state.value.copyWith(themeMode: themeMode));
  }

  Future<void> changeTheme(ThemeMode newMode) async {
    if (state.value.themeMode == newMode) return;

    emit(state.value.copyWith(themeMode: newMode));
    await _repo.cacheThemeMode(newMode);
  }
}
