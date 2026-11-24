import 'package:flutter/foundation.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';

bool get supportsVideoCompression =>
    !kIsWeb && defaultTargetPlatform == TargetPlatform.android;

final class UnsupportedCompressionPage extends StatelessWidget {
  const UnsupportedCompressionPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: SidePageAppBarComponent(title: context.localeKeys.compression),
    body: SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.large),
          child: Text(
            context.localeKeys.compressionAndroidOnly,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}
