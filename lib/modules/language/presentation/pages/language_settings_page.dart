// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
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
      appBar: SidePageAppBarComponent(
        title: context.localeKeys.settingsLanguageTitle,
      ),
      body: BlocSignalBuilder<LocalizationCubit, LocalizationState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          final currentLangCode = state.langCode;

          Future<void> changeLang(String langCode) async {
            await context.read<LocalizationCubit>().changeLanguage(langCode);
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.large,
              vertical: AppSpacing.small,
            ),
            child: RadioGroup<String>(
              groupValue: currentLangCode,
              onChanged: (value) async {
                if (value != null && value != currentLangCode) {
                  await changeLang(value);
                }
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...List.generate(AppLocalizations.supportedLocales.length, (
                    index,
                  ) {
                    final locale = AppLocalizations.supportedLocales[index];
                    final langCode = locale.languageCode;
                    final localeData = lookupAppLocalizations(locale);
                    final title = localeData.languageName;

                    final subtitle = localeData.languageSubtitle;
                    final countryCode = localeData.countryCode;
                    final isFirst = index == 0;
                    final isLast =
                        index == AppLocalizations.supportedLocales.length - 1;
                    final isSingle =
                        AppLocalizations.supportedLocales.length == 1;

                    final radioWidget = Radio<String>(value: langCode);
                    final flagWidget = CountryFlag.fromCountryCode(countryCode);

                    void handleTap() {
                      if (langCode != currentLangCode) {
                        unawaited(changeLang(langCode));
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

                    return tile
                        .animate(
                          delay:
                              AppMotion.motionDelay.milliseconds +
                              (80 * index).ms,
                        )
                        .fadeIn();
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
