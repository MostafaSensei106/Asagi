import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../compression/domain/models/selected_video.dart';
import '../../../compression/presentation/widgets/video_preview.dart';

String homeMegabytes(BuildContext context, num bytes) =>
    '${NumberFormat('0.#', Localizations.localeOf(context).toString()).format(bytes / 1000000)} ${context.localeKeys.megabytesShort}';

/// The only empty-state action is in the persistent action dock.
final class HomeImportSurface extends StatelessWidget {
  const HomeImportSurface({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final l10n = context.localeKeys;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          constraints: const BoxConstraints(minHeight: 220),
          padding: const EdgeInsets.all(AppSpacing.xxLarge),
          decoration: BoxDecoration(
            color: scheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(AppRadii.xLarge),
            border: Border.all(color: scheme.outlineVariant),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(LucideIcons.film, size: 64, color: scheme.primary),
              const Gap(AppSpacing.xLarge),
              Text(
                l10n.homeVideoWorkspace,
                textAlign: TextAlign.center,
                style: context.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Gap(AppSpacing.small),
              Text(
                l10n.homeImportHint,
                textAlign: TextAlign.center,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
        const Gap(AppSpacing.large),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              LucideIcons.shieldCheck,
              size: 20,
              color: scheme.onSurfaceVariant,
            ),
            const Gap.horizontal(AppSpacing.small),
            Expanded(
              child: Text(
                l10n.onDeviceProcessingLabel,
                style: context.textTheme.bodySmall?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

final class HomeVideoPickingCard extends StatelessWidget {
  const HomeVideoPickingCard({super.key});
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: AppSpacing.xxxLarge),
    child: Column(
      children: [
        const CircularProgressIndicator(),
        const Gap(AppSpacing.xLarge),
        Semantics(
          liveRegion: true,
          child: Text(
            context.localeKeys.preparingSelectedVideo,
            textAlign: TextAlign.center,
            style: context.textTheme.titleLarge,
          ),
        ),
      ],
    ),
  );
}

final class HomeVideoPreview extends HookWidget {
  const HomeVideoPreview({
    required this.video,
    this.outputPath,
    this.onReplace,
    super.key,
  });
  final SelectedVideo video;
  final String? outputPath;
  final VoidCallback? onReplace;
  @override
  Widget build(BuildContext context) {
    final after = useState(true);
    useEffect(() {
      after.value = true;
      return null;
    }, [outputPath]);
    final l10n = context.localeKeys;
    final completed = outputPath != null;
    final path = completed && after.value ? outputPath! : video.path;
    final title = completed && after.value
        ? l10n.compressedPreview
        : l10n.originalPreview;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    video.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Gap(AppSpacing.xSmall),
                  Text(
                    '${homeMegabytes(context, video.metadata.fileSizeBytes)} · ${video.metadata.width} × ${video.metadata.height}',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            if (onReplace != null)
              IconButtonComponent(
                icon: LucideIcons.replace,
                tooltip: l10n.changeVideo,
                foregroundColor: context.colorScheme.onSurface,
                onPressed: onReplace,
              ),
          ],
        ),
        const Gap(AppSpacing.large),
        if (completed) ...[
          SegmentedButton<bool>(
            segments: [
              ButtonSegment(value: false, label: Text(l10n.originalPreview)),
              ButtonSegment(value: true, label: Text(l10n.compressedPreview)),
            ],
            selected: {after.value},
            onSelectionChanged: (value) => after.value = value.first,
          ),
          const Gap(AppSpacing.medium),
        ],
        VideoPreview(key: ValueKey(path), path: path, title: title),
      ],
    );
  }
}
