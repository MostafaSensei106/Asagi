import 'package:flutter_animate/flutter_animate.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../constants/design_system/tokens/tokens.dart';
import '../../display/expressive_icon.dart';

/// The kind of visual story used to explain a feature.
enum InfoIllustrationKind {
  performance,
  mediaAnalysis,
  audio,
  conversation,
  search,
  privacy,
  fileAction,
  general,
}

/// A themed, animated illustration built from widgets for explanation sheets.
final class InfoBottomSheetIllustration extends StatelessWidget {
  const InfoBottomSheetIllustration({
    required this.icon,
    required this.kind,
    super.key,
  });

  final IconData icon;
  final InfoIllustrationKind kind;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Container(
      height: 224,
      padding: const EdgeInsets.all(AppSpacing.small),
      decoration: BoxDecoration(
        color: scheme.surfaceContainer,
        borderRadius: BorderRadius.circular(AppRadii.large),
      ),
      child: Stack(
        children: [
          Positioned.fill(child: _IllustrationScene(kind: kind)),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child:
                ExpressiveIcon(
                      icon: icon,
                      shape: ExpressiveIconShape.softBurst,
                      size: 48,
                      backgroundColor: scheme.primaryContainer,
                      foregroundColor: scheme.onPrimaryContainer,
                    )
                    .animate()
                    .fadeIn(duration: 300.ms)
                    .scale(
                      begin: const Offset(0.75, 0.75),
                      curve: Curves.easeOutBack,
                    ),
          ),
        ],
      ),
    );
  }
}

final class _IllustrationScene extends StatelessWidget {
  const _IllustrationScene({required this.kind});

  final InfoIllustrationKind kind;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final accent = scheme.primary;
    final secondary = scheme.tertiary;

    final scene = switch (kind) {
      InfoIllustrationKind.performance => _PerformanceScene(
        accent: accent,
        secondary: secondary,
      ),
      InfoIllustrationKind.mediaAnalysis => _MediaAnalysisScene(
        accent: accent,
        secondary: secondary,
      ),
      InfoIllustrationKind.audio => _AudioScene(
        accent: accent,
        secondary: secondary,
      ),
      InfoIllustrationKind.conversation => _ConversationScene(
        accent: accent,
        secondary: secondary,
      ),
      InfoIllustrationKind.search => _SearchScene(
        accent: accent,
        secondary: secondary,
      ),
      InfoIllustrationKind.privacy => _PrivacyScene(
        accent: accent,
        secondary: secondary,
      ),
      InfoIllustrationKind.fileAction => _FileActionScene(
        accent: accent,
        secondary: secondary,
      ),
      InfoIllustrationKind.general => _GeneralScene(
        accent: accent,
        secondary: secondary,
      ),
    };

    return Align(
      child: scene
          .animate()
          .fadeIn(duration: 350.ms)
          .slideY(begin: 0.12, duration: 420.ms, curve: Curves.easeOutCubic),
    );
  }
}

final class _PerformanceScene extends StatelessWidget {
  const _PerformanceScene({required this.accent, required this.secondary});

  final Color accent;
  final Color secondary;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _FeatureCard(
        color: secondary.withValues(alpha: 0.18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(LucideIcons.cpu, color: secondary, size: 25),
            const SizedBox(height: 9),
            _Bars(color: secondary, heights: const [12, 20, 15, 25, 18]),
          ],
        ),
      ),
      const SizedBox(width: 12),
      _FeatureCard(
        color: accent.withValues(alpha: 0.14),
        width: 118,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(LucideIcons.gauge, color: accent, size: 22),
                const SizedBox(width: 8),
                _Bars(color: accent, heights: const [11, 17, 23, 29]),
              ],
            ),
            const SizedBox(height: 13),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: 0.72,
                minHeight: 8,
                backgroundColor: accent.withValues(alpha: 0.18),
                color: accent,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

final class _MediaAnalysisScene extends StatelessWidget {
  const _MediaAnalysisScene({required this.accent, required this.secondary});

  final Color accent;
  final Color secondary;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _FrameTile(
            color: secondary.withValues(alpha: 0.22),
            icon: LucideIcons.image,
          ),
          const SizedBox(width: 8),
          _FrameTile(
            color: accent.withValues(alpha: 0.24),
            icon: LucideIcons.scanLine,
            emphasized: true,
          ),
          const SizedBox(width: 8),
          _FrameTile(
            color: secondary.withValues(alpha: 0.16),
            icon: LucideIcons.image,
          ),
        ],
      ),
      const SizedBox(height: 14),
      _Timeline(color: accent),
    ],
  );
}

final class _AudioScene extends StatelessWidget {
  const _AudioScene({required this.accent, required this.secondary});

  final Color accent;
  final Color secondary;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(LucideIcons.audioLines, color: accent, size: 24),
          const SizedBox(width: 12),
          _Bars(
            color: accent,
            heights: const [14, 28, 18, 36, 22, 30, 13, 25, 17, 31, 12],
          ),
        ],
      ),
      const SizedBox(height: 17),
      _TextLine(color: secondary, width: 190),
      const SizedBox(height: 8),
      _TextLine(color: secondary, width: 138),
    ],
  );
}

final class _ConversationScene extends StatelessWidget {
  const _ConversationScene({required this.accent, required this.secondary});

  final Color accent;
  final Color secondary;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Align(
        alignment: AlignmentDirectional.centerStart,
        child: _MessageBubble(
          color: secondary.withValues(alpha: 0.25),
          width: 132,
        ),
      ),
      const SizedBox(height: 10),
      Align(
        alignment: AlignmentDirectional.centerEnd,
        child: _MessageBubble(
          color: accent.withValues(alpha: 0.24),
          width: 168,
        ),
      ),
      const SizedBox(height: 10),
      Align(
        alignment: AlignmentDirectional.centerEnd,
        child: _MessageBubble(
          color: accent.withValues(alpha: 0.16),
          width: 108,
        ),
      ),
    ],
  );
}

final class _SearchScene extends StatelessWidget {
  const _SearchScene({required this.accent, required this.secondary});

  final Color accent;
  final Color secondary;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: accent.withValues(alpha: 0.14),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Icon(LucideIcons.search, color: accent, size: 18),
            const SizedBox(width: 10),
            _TextLine(color: accent, width: 104),
          ],
        ),
      ),
      const SizedBox(height: 13),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _ResultCard(
            color: secondary.withValues(alpha: 0.22),
            accent: secondary,
          ),
          const SizedBox(width: 10),
          _ResultCard(color: accent.withValues(alpha: 0.19), accent: accent),
          const SizedBox(width: 10),
          _ResultCard(
            color: secondary.withValues(alpha: 0.16),
            accent: secondary,
          ),
        ],
      ),
    ],
  );
}

final class _PrivacyScene extends StatelessWidget {
  const _PrivacyScene({required this.accent, required this.secondary});

  final Color accent;
  final Color secondary;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _FeatureCard(
        color: secondary.withValues(alpha: 0.18),
        width: 128,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _TextLine(color: secondary, width: 82),
            const SizedBox(height: 9),
            _TextLine(color: secondary.withValues(alpha: 0.7), width: 61),
            const SizedBox(height: 9),
            _TextLine(color: secondary.withValues(alpha: 0.45), width: 92),
          ],
        ),
      ),
      const SizedBox(width: 14),
      ExpressiveIcon(
        icon: LucideIcons.shieldCheck,
        shape: ExpressiveIconShape.clover,
        size: 64,
        backgroundColor: accent.withValues(alpha: 0.18),
        foregroundColor: accent,
      ),
    ],
  );
}

final class _FileActionScene extends StatelessWidget {
  const _FileActionScene({required this.accent, required this.secondary});

  final Color accent;
  final Color secondary;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _FileCard(color: secondary.withValues(alpha: 0.2), accent: secondary),
      const SizedBox(width: 14),
      Icon(LucideIcons.arrowRight, color: accent, size: 20),
      const SizedBox(width: 14),
      _FileCard(color: accent.withValues(alpha: 0.2), accent: accent),
    ],
  );
}

final class _GeneralScene extends StatelessWidget {
  const _GeneralScene({required this.accent, required this.secondary});

  final Color accent;
  final Color secondary;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _FeatureCard(
        color: secondary.withValues(alpha: 0.18),
        child: Icon(LucideIcons.layers, color: secondary, size: 30),
      ),
      const SizedBox(width: 12),
      Icon(LucideIcons.arrowRight, color: accent, size: 20),
      const SizedBox(width: 12),
      _FeatureCard(
        color: accent.withValues(alpha: 0.18),
        child: Icon(LucideIcons.sparkles, color: accent, size: 30),
      ),
    ],
  );
}

final class _FeatureCard extends StatelessWidget {
  const _FeatureCard({
    required this.color,
    required this.child,
    this.width = 76,
  });

  final Color color;
  final Widget child;
  final double width;

  @override
  Widget build(BuildContext context) => Container(
    width: width,
    height: 82,
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(22),
    ),
    child: child,
  );
}

final class _FrameTile extends StatelessWidget {
  const _FrameTile({
    required this.color,
    required this.icon,
    this.emphasized = false,
  });

  final Color color;
  final IconData icon;
  final bool emphasized;

  @override
  Widget build(BuildContext context) => Container(
    width: 57,
    height: 76,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(18),
    ),
    child: Icon(
      icon,
      size: emphasized ? 25 : 20,
      color: Theme.of(context).colorScheme.primary,
    ),
  );
}

final class _Timeline extends StatelessWidget {
  const _Timeline({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(
      9,
      (index) => Container(
        width: index.isEven ? 19 : 12,
        height: 5,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          color: color.withValues(alpha: index == 4 ? 1 : 0.35),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    ),
  );
}

final class _Bars extends StatelessWidget {
  const _Bars({required this.color, required this.heights});

  final Color color;
  final List<double> heights;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      for (final height in heights)
        Container(
          width: 5,
          height: height,
          margin: const EdgeInsets.symmetric(horizontal: 2),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
    ],
  );
}

final class _TextLine extends StatelessWidget {
  const _TextLine({required this.color, required this.width});

  final Color color;
  final double width;

  @override
  Widget build(BuildContext context) => Container(
    width: width,
    height: 7,
    decoration: BoxDecoration(
      color: color.withValues(alpha: 0.48),
      borderRadius: BorderRadius.circular(8),
    ),
  );
}

final class _MessageBubble extends StatelessWidget {
  const _MessageBubble({required this.color, required this.width});

  final Color color;
  final double width;

  @override
  Widget build(BuildContext context) => Container(
    width: width,
    height: 29,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(14),
    ),
  );
}

final class _ResultCard extends StatelessWidget {
  const _ResultCard({required this.color, required this.accent});

  final Color color;
  final Color accent;

  @override
  Widget build(BuildContext context) => Container(
    width: 66,
    height: 63,
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Align(
      alignment: AlignmentDirectional.bottomStart,
      child: _TextLine(color: accent, width: 32),
    ),
  );
}

final class _FileCard extends StatelessWidget {
  const _FileCard({required this.color, required this.accent});

  final Color color;
  final Color accent;

  @override
  Widget build(BuildContext context) => _FeatureCard(
    color: color,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(LucideIcons.fileVideo, color: accent, size: 26),
        const SizedBox(height: 8),
        _TextLine(color: accent, width: 34),
      ],
    ),
  );
}
