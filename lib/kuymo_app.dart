import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:material_ui/material_ui.dart';
import 'package:toastification/toastification.dart';

import 'core/constants/app_metadata.dart';
import 'core/di/di.dart';
import 'core/preferences/domain/entities/compression_defaults.dart';
import 'core/preferences/domain/repositories/settings_repository.dart';
import 'core/router/app_router.dart';
import 'core/utils/localization/app_supported_locales.dart';
import 'core/utils/localization/logic/cubit/localization_cubit.dart';
import 'core/utils/theme/app_theme.dart';
import 'core/utils/theme/logic/cubit/theme_cubit.dart';
import 'l10n/app_localizations.dart';
import 'modules/compression/domain/repositories/video_advice_repository.dart';
import 'modules/compression/domain/repositories/video_compression_repository.dart';
import 'modules/compression/presentation/cubit/compression_cubit.dart';
import 'modules/notifications/presentation/cubit/notification_access_cubit.dart';
import 'modules/notifications/presentation/cubit/notifications_cubit.dart';

class KuymoApp extends StatelessWidget {
  const KuymoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MultiBlocSignalProvider(
        providers: [
          BlocSignalProvider(create: (_) => getIt<LocalizationCubit>()),
          BlocSignalProvider(create: (_) => getIt<ThemeCubit>()),
          BlocSignalProvider.value(value: getIt<NotificationsCubit>()),
          BlocSignalProvider.value(value: getIt<NotificationAccessCubit>()),
          BlocSignalProvider(
            create: (_) => CompressionCubit(
              getIt<VideoCompressionRepository>(),
              defaults: getIt<SettingsRepository<CompressionDefaults>>(),
              advisor: getIt<VideoAdviceRepository>(),
            ),
          ),
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
            final colorSchemeVariant = context.select(
              (ThemeCubit cubit) => cubit.state.value.colorSchemeVariant,
            );
            return MaterialApp.router(
              title: AppMetadata.name,
              theme: AppTheme.light(
                variant: colorSchemeVariant,
                highContrast: highContrast,
              ),
              darkTheme: AppTheme.dark(
                variant: colorSchemeVariant,
                highContrast: highContrast,
              ),
              highContrastTheme: AppTheme.lightHighContrast(
                variant: colorSchemeVariant,
              ),
              highContrastDarkTheme: AppTheme.darkHighContrast(
                variant: colorSchemeVariant,
              ),
              themeMode: themeMode,
              locale: AppSupportedLocales.values.firstWhere(
                (supportedLocale) => supportedLocale.toString() == locale,
                orElse: () => AppSupportedLocales.values.first,
              ),
              scrollBehavior: const CupertinoScrollBehavior(),
              restorationScopeId: AppMetadata.restorationScopeId,
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
