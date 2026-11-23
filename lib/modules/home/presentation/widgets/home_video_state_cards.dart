import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../compression/presentation/widgets/video_preview.dart';

final class HomeVideoPickingCard extends StatelessWidget {
  const HomeVideoPickingCard({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return CardComponent.filled(
      color: scheme.surfaceContainerLow,
      padding: const EdgeInsets.all(AppSpacing.xLarge),
      child: Column(
        children: [
          SizedBox.square(
            dimension: 76,
            child: Stack(
              alignment: Alignment.center,
              children: [
                ExpressiveIcon(
                  icon: LucideIcons.video,
                  shape: ExpressiveIconShape.softBurst,
                  size: 64,
                  backgroundColor: scheme.primaryContainer,
                  foregroundColor: scheme.onPrimaryContainer,
                ),
                const SizedBox.square(
                  dimension: 76,
                  child: CircularProgressIndicator(strokeWidth: 3),
                ),
              ],
            ),
          ),
          const Gap(AppSpacing.large),
          Text(
            context.localeKeys.preparingSelectedVideo,
            textAlign: TextAlign.center,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          const Gap(AppSpacing.small),
          Text(
            context.localeKeys.pleaseWait,
            textAlign: TextAlign.center,
            style: context.textTheme.bodyMedium?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
          const Gap(AppSpacing.large),
          const LinearProgressIndicator(),
        ],
      ),
    );
  }
}

final class HomeSelectedVideoCard extends StatelessWidget {
  const HomeSelectedVideoCard({
    required this.name,
    required this.path,
    required this.previewTitle,
    required this.sizeDetails,
    super.key,
  });

  final String name;
  final String path;
  final String previewTitle;
  final String sizeDetails;

  @override
  Widget build(BuildContext context) => CardComponent.filled(
    color: context.colorScheme.surfaceContainerLow,
    padding: const EdgeInsets.all(AppSpacing.large),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ExpressiveIcon(
              icon: LucideIcons.video,
              shape: ExpressiveIconShape.gem,
              size: 42,
              backgroundColor: context.colorScheme.primaryContainer,
              foregroundColor: context.colorScheme.onPrimaryContainer,
            ),
            const Gap.horizontal(AppSpacing.medium),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Gap(AppSpacing.xSmall),
                  Text(
                    sizeDetails,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Gap(AppSpacing.medium),
        VideoPreview(path: path, title: previewTitle),
      ],
    ),
  );
}
