import 'dart:async';
import 'dart:ui' as ui;

import 'package:bloc_signals_hydrate/bloc_signals_hydrate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../services/l10n/l10n_service.dart';
import '../../app_supported_locales.dart';

part 'localization_cubit.freezed.dart';
part 'localization_state.dart';

@lazySingleton
class LocalizationCubit extends HydratedCubitSignal<LocalizationState> {
  LocalizationCubit({required L10nService l10nService})
    : _l10nService = l10nService,
      super(initialState: _getInitialState(l10nService));

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
    //    await getIt<CacheManager>().refreshAllCache();
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
  LocalizationState? fromJson(dynamic json) {
    if (json is! Map<String, dynamic>) return null;
    final langCode = json['langCode'] as String?;
    if (langCode == null || langCode.isEmpty) return null;
    final resolvedCode = _resolveLocaleCode(langCode);
    if (resolvedCode == null) return null;
    return LocalizationState(langCode: resolvedCode);
  }

  @override
  Map<String, dynamic>? toJson(LocalizationState state) {
    return {'langCode': state.langCode};
  }
}
