import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:material_ui/material_ui.dart';
import 'package:toastification/toastification.dart';

import 'core/constants/app_metadata.dart';
import 'core/di/di.dart';
import 'core/router/app_router.dart';
import 'core/utils/localization/app_supported_locales.dart';
import 'core/utils/localization/logic/cubit/localization_cubit.dart';
import 'core/utils/theme/app_theme.dart';
import 'core/utils/theme/logic/cubit/theme_cubit.dart';
import 'l10n/app_localizations.dart';

class ZumiApp extends StatelessWidget {
  const ZumiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MultiBlocSignalProvider(
        providers: [
          BlocSignalProvider(create: (_) => getIt<LocalizationCubit>()),
          BlocSignalProvider(create: (_) => getIt<ThemeCubit>()),
        ],
        child: Builder(
          builder: (context) {
            final locale = context.select(
              (LocalizationCubit cubit) => cubit.state.value.langCode,
            );
            final themeMode = context.select(
              (ThemeCubit cubit) => cubit.state.value.themeMode,
            );
            final highContrast = context.select(
              (ThemeCubit cubit) => cubit.state.value.highContrast,
            );
            return MaterialApp.router(
              title: AppMetadata.name,
              theme: highContrast
                  ? AppTheme.lightHighContrast()
                  : AppTheme.light(),
              darkTheme: highContrast
                  ? AppTheme.darkHighContrast()
                  : AppTheme.dark(),
              highContrastTheme: AppTheme.lightHighContrast(),
              highContrastDarkTheme: AppTheme.darkHighContrast(),
              themeMode: themeMode,
              locale: AppSupportedLocales.values.firstWhere(
                (supportedLocale) => supportedLocale.toString() == locale,
                orElse: () => AppSupportedLocales.values.first,
              ),
              scrollBehavior: const CupertinoScrollBehavior(),
              restorationScopeId: '${AppMetadata.name}-restoration',
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                ...AppLocalizations.localizationsDelegates,
              ],
              supportedLocales: AppSupportedLocales.values,
              routerConfig: AppRouter.config,
              builder: (context, child) => child!,
            );
          },
        ),
      ),
    );
  }
}
