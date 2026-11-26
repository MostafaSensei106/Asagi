import 'dart:async';
import 'dart:ui' as ui;

import 'package:bloc_signals/bloc_signals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../preferences/domain/entities/language_settings.dart';
import '../../../../preferences/domain/repositories/settings_repository.dart';
import '../../../../services/l10n/l10n_service.dart';
import '../../app_supported_locales.dart';

part 'localization_cubit.freezed.dart';
part 'localization_state.dart';

@lazySingleton
class LocalizationCubit extends CubitSignal<LocalizationState> {
  LocalizationCubit({
    required L10nService l10nService,
    required this._repository,
  }) : _l10nService = l10nService,
       super(initialState: _getInitialState(l10nService)) {
    _subscription = _repository.changes.listen(_apply);
    _apply(_repository.current);
    unawaited(_load());
  }
  final SettingsRepository<LanguageSettings> _repository;
  late final StreamSubscription<LanguageSettings> _subscription;
  Future<void> _load() async {
    try {
      _apply(await _repository.load());
    } on Object {
      if (!isClosed) emit(stateValue.copyWith(failed: true));
    }
  }

  void _apply(LanguageSettings settings) {
    if (isClosed) return;
    final code = settings.localeCode;
    final resolved = code == null ? null : _resolveLocaleCode(code);
    emit(
      resolved == null
          ? _getInitialState(_l10nService)
          : LocalizationState(langCode: resolved),
    );
  }

  final L10nService _l10nService;

  static LocalizationState _getInitialState(L10nService l10nService) {
    final systemLocale = ui.PlatformDispatcher.instance.locale;
    return LocalizationState(
      langCode:
          (AppSupportedLocales.resolve(
                    systemLocale.toString(),
                    systemLocale: systemLocale,
                  ) ??
                  l10nService.supportedLocales.first)
              .toString(),
    );
  }

  String? _resolveLocaleCode(String code) {
    return AppSupportedLocales.resolve(
      code,
      systemLocale: ui.PlatformDispatcher.instance.locale,
    )?.toString();
  }

  Future<void> changeLanguage(String localeCode) async {
    final resolvedCode = _resolveLocaleCode(localeCode);
    if (resolvedCode == null || state.value.langCode == resolvedCode) return;
    emit(LocalizationState(langCode: resolvedCode));
  }

  Future<void> resetSettings() async {
    try {
      await _repository.reset();
    } on Object {
      if (!isClosed) emit(stateValue.copyWith(failed: true));
    }
  }

  Future<void> toggleLanguage() async {
    final supportedLocales = _l10nService.supportedLocales;
    if (supportedLocales.isEmpty) return;

    final currentIndex = supportedLocales.indexWhere(
      (locale) => locale.toString() == state.value.langCode,
    );
    final nextIndex = (currentIndex + 1) % supportedLocales.length;
    await changeLanguage(supportedLocales[nextIndex].toString());
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();
    return super.close();
  }
}
