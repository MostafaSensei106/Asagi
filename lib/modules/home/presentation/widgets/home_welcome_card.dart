import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';

final class HomeWelcomeCard extends StatelessWidget {
  const HomeWelcomeCard({required this.onPickVideo, super.key});

  final VoidCallback onPickVideo;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return CardComponent.filled(
      color: scheme.primaryContainer,
      padding: const EdgeInsets.all(AppSpacing.xLarge),
      child: Column(
        children: [
          ExpressiveIcon(
            icon: LucideIcons.video,
            shape: ExpressiveIconShape.softBurst,
            size: 76,
            backgroundColor: scheme.surface,
            foregroundColor: scheme.primary,
          ),
          const Gap(AppSpacing.large),
          Text(
            context.localeKeys.chooseAVideo,
            textAlign: TextAlign.center,
            style: context.textTheme.headlineSmall?.copyWith(
              color: scheme.onPrimaryContainer,
              fontWeight: FontWeight.w800,
            ),
          ),
          const Gap(AppSpacing.small),
          Text(
            context.localeKeys.compressVideosPrivatelyOnYourDevice,
            textAlign: TextAlign.center,
            style: context.textTheme.bodyMedium?.copyWith(
              color: scheme.onPrimaryContainer,
            ),
          ),
          const Gap(AppSpacing.large),
          FilledButtonComponent.icon(
            expand: true,
            icon: AsagiIcons.videoSelect,
            label: context.localeKeys.pickVideo,
            onPressed: onPickVideo,
          ),
        ],
      ),
    );
  }
}
