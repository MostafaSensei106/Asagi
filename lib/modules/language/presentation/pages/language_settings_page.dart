// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:country_flags/country_flags.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/utils/localization/app_supported_locales.dart';
import '../../../../core/utils/localization/logic/cubit/localization_cubit.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/display/list_tile/list_tile_widget_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import '../../../../l10n/app_localizations.dart';

final class LanguageSettingsPage extends StatelessWidget {
  const LanguageSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SidePageAppBarComponent(title: context.localeKeys.language),
      body: BlocSignalBuilder<LocalizationCubit, LocalizationState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          final currentLocaleCode = state.langCode;

          Future<void> changeLocale(String localeCode) async {
            await context.read<LocalizationCubit>().changeLanguage(localeCode);
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.large,
              vertical: AppSpacing.small,
            ),
            child: RadioGroup<String>(
              groupValue: currentLocaleCode,
              onChanged: (value) async {
                if (value != null && value != currentLocaleCode) {
                  await changeLocale(value);
                }
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...List.generate(AppSupportedLocales.values.length, (index) {
                    final locale = AppSupportedLocales.values[index];
                    final localeCode = locale.toString();
                    final localeData = lookupAppLocalizations(locale);
                    final title = localeData.languageName;

                    final countryCode = localeData.countryCode;
                    final subtitle = context.localeKeys.countryName(
                      countryCode,
                    );
                    final isFirst = index == 0;
                    final isLast =
                        index == AppSupportedLocales.values.length - 1;
                    final isSingle = AppSupportedLocales.values.length == 1;

                    final radioWidget = Radio<String>(value: localeCode);
                    final flagWidget = CountryFlag.fromCountryCode(countryCode);

                    void handleTap() {
                      if (localeCode != currentLocaleCode) {
                        unawaited(changeLocale(localeCode));
                      }
                    }

                    final tile = isSingle
                        ? ListTileWidgetComponent(
                            title: title,
                            subtitle: subtitle,
                            leading: flagWidget,
                            trailing: radioWidget,
                            onTap: handleTap,
                          )
                        : isFirst
                        ? ListTileWidgetComponent.top(
                            title: title,
                            subtitle: subtitle,
                            leading: flagWidget,
                            trailing: radioWidget,
                            onTap: handleTap,
                          )
                        : isLast
                        ? ListTileWidgetComponent.bottom(
                            title: title,
                            subtitle: subtitle,
                            leading: flagWidget,
                            trailing: radioWidget,
                            onTap: handleTap,
                          )
                        : ListTileWidgetComponent.middle(
                            title: title,
                            subtitle: subtitle,
                            leading: flagWidget,
                            trailing: radioWidget,
                            onTap: handleTap,
                          );

                    return tile;
                  }),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
