import 'dart:async';

import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../../../core/widgets/display/placeholder/app_placeholder_page.dart';

/// Root destination placeholder with a shortcut into settings.
///
/// The home surface is the only place that opens settings directly, so the
/// action lives here instead of inside the shared placeholder scaffold.
final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPlaceholderPage(
      title: context.localeKeys.homeTitle,
      description: context.localeKeys.homeDescription,
      icon: ZumiIcons.home,
      showBackButton: false,
      actions: [
        IconButtonComponent.outlined(
          icon: ZumiIcons.settings,
          toolTip: context.localeKeys.settingsTitle,
          onPressed: () => unawaited(context.push(const SettingsRoute())),
        ),
      ],
    );
  }
}
