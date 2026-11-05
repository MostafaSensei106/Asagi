import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:material_ui/material_ui.dart';
import 'package:toastification/toastification.dart';
import 'package:zumi/core/constants/app_metadata.dart';
import 'package:zumi/core/di/di.dart';
import 'package:zumi/core/utils/localization/logic/cubit/localization_cubit.dart';
import 'package:zumi/core/utils/theme/app_theme.dart';
import 'package:zumi/core/utils/theme/logic/cubit/theme_cubit.dart';
import 'package:zumi/l10n/app_localizations.dart';

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
            return MaterialApp(
              title: AppMetadata.name,
              theme: AppTheme.light,
              darkTheme: AppTheme.dark,
              themeMode: themeMode,
              locale: Locale(locale),
              scrollBehavior: CupertinoScrollBehavior(),
              restorationScopeId: '${AppMetadata.name}-restoration',
              localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                ...AppLocalizations.localizationsDelegates,
              ],
              supportedLocales: AppLocalizations.supportedLocales,
              builder: (context, child) => child!,
            );
          },
        ),
      ),
    );
  }
}
