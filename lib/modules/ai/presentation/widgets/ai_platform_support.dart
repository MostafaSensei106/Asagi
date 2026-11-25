import 'package:flutter/foundation.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';

bool get supportsLocalAi =>
    !kIsWeb && defaultTargetPlatform == TargetPlatform.android;

final class AiUnsupportedPage extends StatelessWidget {
  const AiUnsupportedPage({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: SidePageAppBarComponent(title: context.localeKeys.kuymoAi),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.large),
        child: Text(context.localeKeys.aiAndroidOnly),
      ),
    ),
  );
}
