import 'package:flutter_animate/flutter_animate.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';

/// Live, interactive sample of the active theme.
///
/// Features animated expressive shapes, a realistic video compressor mockup,
/// and live surface and accent swatches that reflect light, dark, and AMOLED modes.
final class ThemePreviewCard extends StatelessWidget {
  const ThemePreviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final isDark = scheme.brightness == Brightness.dark;
    final isAmoled = isDark && scheme.surface == const Color(0xff000000);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.localeKeys.themePreview,
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    context.localeKeys.surfacesTextAndAccents,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            if (isAmoled)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.small + 2,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: scheme.primaryContainer,
                  borderRadius: BorderRadius.circular(AppRadii.pill),
                  border: Border.all(
                    color: scheme.primary.withValues(alpha: 0.6),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      LucideIcons.zap,
                      size: 13,
                      color: scheme.onPrimaryContainer,
                    ),
                    const Gap.horizontal(4),
                    Text(
                      'AMOLED',
                      style: context.textTheme.labelSmall?.copyWith(
                        color: scheme.onPrimaryContainer,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
        const Gap(AppSpacing.medium),
        const _ThemeSample(),
      ],
    );
  }
}

/// Miniature full-featured app canvas built from real theme surfaces,
/// expressive animated shapes, and active brand accents.
final class _ThemeSample extends StatelessWidget {
  const _ThemeSample();

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return Container(
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(AppRadii.large),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Header Bar with spinning sparkle badge & live pulse
          Row(
            children: [
              ExpressiveIcon(
                    icon: LucideIcons.sparkles,
                    size: 36,
                    backgroundColor: scheme.primaryContainer,
                    foregroundColor: scheme.onPrimaryContainer,
                  )
                  .animate(onPlay: (controller) => controller.repeat())
                  .rotate(duration: 9.seconds),
              const Gap.horizontal(AppSpacing.small),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          context.localeKeys.zumiEngine,
                          style: context.textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: scheme.onSurface,
                          ),
                        ),
                      ],
                    ),
                    const Gap(2),
                    Text(
                      context.localeKeys.targetSizeOptimizer,
                      style: context.textTheme.bodySmall?.copyWith(
                        fontSize: 11,
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                LucideIcons.palette,
                size: 18,
                color: scheme.onSurfaceVariant,
              ),
            ],
          ),

          const Gap(AppSpacing.medium),

          // 2. Realistic Video Compression Card
          Container(
            padding: const EdgeInsets.all(AppSpacing.small + 2),
            decoration: BoxDecoration(
              color: scheme.surfaceContainer,
              borderRadius: BorderRadius.circular(AppRadii.medium),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ExpressiveIcon(
                          icon: LucideIcons.video,
                          shape: ExpressiveIconShape.gem,
                          size: 32,
                          backgroundColor: scheme.secondaryContainer,
                          foregroundColor: scheme.onSecondaryContainer,
                        )
                        .animate(
                          onPlay: (controller) =>
                              controller.repeat(reverse: true),
                        )
                        .rotate(begin: -0.08, end: 0.08, duration: 2500.ms),
                    const Gap.horizontal(AppSpacing.small),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'capture_4k60_hdr.mp4',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: scheme.onSurface,
                              fontSize: 12,
                            ),
                          ),
                          const Gap(2),
                          Text(
                            '148.5 MB  →  24.0 MB',
                            style: context.textTheme.bodySmall?.copyWith(
                              fontSize: 11,
                              color: scheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 7,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: scheme.primaryContainer,
                        borderRadius: BorderRadius.circular(AppRadii.pill),
                      ),
                      child: Text(
                        '-84%',
                        style: context.textTheme.labelSmall?.copyWith(
                          color: scheme.onPrimaryContainer,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(AppSpacing.small),
                ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadii.pill),
                      child: LinearProgressIndicator(
                        value: 0.76,
                        minHeight: 6,
                        color: scheme.primary,
                        backgroundColor: scheme.surfaceContainerHighest,
                      ),
                    )
                    .animate(onPlay: (controller) => controller.repeat())
                    .shimmer(
                      duration: 2.seconds,
                      color: scheme.onPrimary.withValues(alpha: 0.35),
                    ),
                const Gap(4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.localeKeys.encodingFormat,
                      style: context.textTheme.bodySmall?.copyWith(
                        fontSize: 10,
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                    Text(
                      '76%',
                      style: context.textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: scheme.primary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const Gap(AppSpacing.medium),

          // 3. Expressive Animated Shapes Row (Rotating and Pulsing)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Clover spinning continuously
              ExpressiveIcon(
                    icon: LucideIcons.clover,
                    shape: ExpressiveIconShape.clover,
                    size: 34,
                    backgroundColor: scheme.primary,
                    foregroundColor: scheme.onPrimary,
                  )
                  .animate(onPlay: (controller) => controller.repeat())
                  .rotate(duration: 7.seconds),

              // Sunny spinning in reverse
              ExpressiveIcon(
                    icon: LucideIcons.sun,
                    shape: ExpressiveIconShape.sunny,
                    size: 34,
                    backgroundColor: scheme.secondary,
                    foregroundColor: scheme.onSecondary,
                  )
                  .animate(onPlay: (controller) => controller.repeat())
                  .rotate(duration: 10.seconds, begin: 1, end: 0),

              // Gem pulsing gently
              ExpressiveIcon(
                    icon: LucideIcons.gem,
                    shape: ExpressiveIconShape.gem,
                    size: 34,
                    backgroundColor: scheme.tertiaryContainer,
                    foregroundColor: scheme.onTertiaryContainer,
                  )
                  .animate(
                    onPlay: (controller) => controller.repeat(reverse: true),
                  )
                  .scale(
                    begin: const Offset(0.88, 0.88),
                    end: const Offset(1.12, 1.12),
                    duration: 1800.ms,
                  ),

              // Soft Burst with tilt wobble
              ExpressiveIcon(
                    icon: LucideIcons.wand2,
                    shape: ExpressiveIconShape.softBurst,
                    size: 34,
                    backgroundColor: scheme.primaryContainer,
                    foregroundColor: scheme.onPrimaryContainer,
                  )
                  .animate(
                    onPlay: (controller) => controller.repeat(reverse: true),
                  )
                  .rotate(begin: -0.15, end: 0.15, duration: 1600.ms),

              // Fan spinning gracefully
              ExpressiveIcon(
                    icon: LucideIcons.fan,
                    shape: ExpressiveIconShape.fan,
                    size: 34,
                    backgroundColor: scheme.secondaryContainer,
                    foregroundColor: scheme.onSecondaryContainer,
                  )
                  .animate(onPlay: (controller) => controller.repeat())
                  .rotate(duration: 12.seconds),
            ],
          ),

          const Gap(AppSpacing.medium),

          // 4. Action Controls Showcase
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 34,
                  decoration: BoxDecoration(
                    color: scheme.primary,
                    borderRadius: BorderRadius.circular(AppRadii.pill),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(LucideIcons.play, size: 14, color: scheme.onPrimary),
                      const Gap.horizontal(6),
                      Text(
                        context.localeKeys.compressAction,
                        style: context.textTheme.labelMedium?.copyWith(
                          color: scheme.onPrimary,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap.horizontal(AppSpacing.small),
              Expanded(
                flex: 2,
                child: Container(
                  height: 34,
                  decoration: BoxDecoration(
                    color: scheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(AppRadii.pill),
                  ),
                  child: Center(
                    child: Text(
                      context.localeKeys.settings,
                      style: context.textTheme.labelMedium?.copyWith(
                        color: scheme.onSecondaryContainer,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const Gap(AppSpacing.small + 2),

          // 5. Palette Swatches Indicator Bar
          Row(
            children: [
              _ColorSwatch(
                color: scheme.primary,
                tooltip: context.localeKeys.primaryColor,
              ),
              const Gap.horizontal(4),
              _ColorSwatch(
                color: scheme.primaryContainer,
                tooltip: '${context.localeKeys.primaryColor} Container',
              ),
              const Gap.horizontal(4),
              _ColorSwatch(
                color: scheme.secondary,
                tooltip: context.localeKeys.secondaryColor,
              ),
              const Gap.horizontal(4),
              _ColorSwatch(
                color: scheme.secondaryContainer,
                tooltip: '${context.localeKeys.secondaryColor} Container',
              ),
              const Gap.horizontal(4),
              _ColorSwatch(
                color: scheme.tertiary,
                tooltip: context.localeKeys.tertiaryColor,
              ),
              const Gap.horizontal(4),
              _ColorSwatch(
                color: scheme.tertiaryContainer,
                tooltip: '${context.localeKeys.tertiaryColor} Container',
              ),
              const Gap.horizontal(4),
              _ColorSwatch(
                color: scheme.surfaceContainerHighest,
                tooltip: 'Surface',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Tiny rounded pill showing an active theme color swatch.
final class _ColorSwatch extends StatelessWidget {
  const _ColorSwatch({required this.color, required this.tooltip});

  final Color color;
  final String tooltip;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Tooltip(
        message: tooltip,
        child: Container(
          height: 6,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(AppRadii.pill),
          ),
        ),
      ),
    );
  }
}
