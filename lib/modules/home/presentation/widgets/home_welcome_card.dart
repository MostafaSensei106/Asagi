import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/kuymo_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';

final class HomeWelcomeCard extends StatelessWidget {
  const HomeWelcomeCard({required this.onPickVideo, super.key});

  final VoidCallback onPickVideo;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return CardComponent.filled(
      color: scheme.surfaceContainerLow,
      padding: const EdgeInsets.all(AppSpacing.xLarge),
      child: Column(
        children: [
          const BrandLogo(size: 80, elevated: false),
          const Gap(AppSpacing.large),
          Text(
            context.localeKeys.brandTagline,
            textAlign: TextAlign.center,
            style: context.textTheme.headlineSmall?.copyWith(
              color: scheme.onSurface,
              fontWeight: FontWeight.w800,
            ),
          ),
          const Gap(AppSpacing.small),
          Text(
            context.localeKeys.compressVideosPrivatelyOnYourDevice,
            textAlign: TextAlign.center,
            style: context.textTheme.bodyMedium?.copyWith(
              color: scheme.onSurface,
            ),
          ),
          const Gap(AppSpacing.large),
          FilledButtonComponent.icon(
            expand: true,
            icon: KuymoIcons.videoSelect,
            label: context.localeKeys.pickVideo,
            onPressed: onPickVideo,
          ),
        ],
      ),
    );
  }
}
