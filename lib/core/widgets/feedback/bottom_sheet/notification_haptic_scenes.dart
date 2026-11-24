part of 'info_bottom_sheet_illustration.dart';

/// Each setting gets a concrete interaction sketch, rather than a generic icon.
final class _HapticSettingScene extends StatelessWidget {
  const _HapticSettingScene({required this.kind});
  final InfoIllustrationKind kind;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final reducedMotion = MediaQuery.disableAnimationsOf(context);
    final scene = switch (kind) {
      InfoIllustrationKind.hapticButtons => _button(colors, reducedMotion),
      InfoIllustrationKind.hapticSelections => _selection(
        colors,
        reducedMotion,
      ),
      InfoIllustrationKind.hapticGestures => _gesture(colors, reducedMotion),
      InfoIllustrationKind.hapticSuccess => _outcome(
        colors,
        reducedMotion,
        success: true,
      ),
      InfoIllustrationKind.hapticErrors => _outcome(
        colors,
        reducedMotion,
        success: false,
      ),
      _ => const SizedBox.shrink(),
    };
    return ExcludeSemantics(child: scene);
  }

  Widget _button(ColorScheme colors, bool reducedMotion) {
    final button = Container(
      width: 140,
      height: 62,
      decoration: BoxDecoration(
        color: colors.primaryContainer,
        borderRadius: BorderRadius.circular(AppRadii.large),
      ),
      child: Icon(LucideIcons.play, color: colors.onPrimaryContainer, size: 30),
    );
    final pointer = Icon(
      LucideIcons.mousePointer2,
      color: colors.tertiary,
      size: 40,
    );
    return SizedBox(
      width: 220,
      height: 130,
      child: Stack(
        alignment: Alignment.center,
        children: [
          reducedMotion
              ? button
              : button
                    .animate(delay: 300.ms)
                    .scale(
                      begin: const Offset(1, 1),
                      end: const Offset(.94, .94),
                      duration: 150.ms,
                    )
                    .then()
                    .scale(
                      begin: const Offset(.94, .94),
                      end: const Offset(1, 1),
                      duration: 220.ms,
                    ),
          PositionedDirectional(
            end: 8,
            bottom: 0,
            child: reducedMotion
                ? pointer
                : pointer.animate().slide(
                    begin: const Offset(.25, .25),
                    end: Offset.zero,
                    duration: 400.ms,
                    curve: Curves.easeOutCubic,
                  ),
          ),
          PositionedDirectional(
            start: 6,
            top: 10,
            child: Icon(LucideIcons.vibrate, color: colors.secondary, size: 25),
          ),
        ],
      ),
    );
  }

  Widget _selection(ColorScheme colors, bool reducedMotion) {
    final thumb = Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: colors.onPrimary,
        shape: BoxShape.circle,
      ),
    );
    return _panel(
      colors,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _TextLine(color: colors.onSurfaceVariant, width: 75),
              const Gap(AppSpacing.small),
              _TextLine(color: colors.onSurfaceVariant, width: 48),
            ],
          ),
          Container(
            width: 68,
            height: 40,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: colors.primary,
              borderRadius: BorderRadius.circular(AppRadii.pill),
            ),
            alignment: AlignmentDirectional.centerEnd,
            child: reducedMotion
                ? thumb
                : thumb.animate().slideX(
                    begin: -.75,
                    end: 0,
                    duration: 500.ms,
                    curve: Curves.easeOutCubic,
                  ),
          ),
        ],
      ),
    );
  }

  Widget _gesture(ColorScheme colors, bool reducedMotion) {
    final tile = _panel(
      colors,
      Row(
        children: [
          Icon(LucideIcons.fileVideo, color: colors.primary, size: 30),
          const Gap(AppSpacing.medium),
          _TextLine(color: colors.onSurfaceVariant, width: 72),
        ],
      ),
    );
    return SizedBox(
      width: 240,
      height: 130,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Icon(LucideIcons.check, color: colors.tertiary, size: 36),
          ),
          reducedMotion
              ? Transform.translate(offset: const Offset(-18, 0), child: tile)
              : tile.animate().slideX(
                  begin: 0,
                  end: -.18,
                  duration: 700.ms,
                  curve: Curves.easeOutCubic,
                ),
          Positioned(
            bottom: 0,
            child: Icon(
              LucideIcons.moveHorizontal,
              color: colors.secondary,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget _outcome(
    ColorScheme colors,
    bool reducedMotion, {
    required bool success,
  }) {
    final color = success ? colors.tertiary : colors.error;
    final foreground = success
        ? colors.onTertiaryContainer
        : colors.onErrorContainer;
    final badge = Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: success ? colors.tertiaryContainer : colors.errorContainer,
        borderRadius: BorderRadius.circular(AppRadii.large),
      ),
      child: Icon(
        success ? LucideIcons.check : LucideIcons.triangleAlert,
        color: foreground,
        size: 34,
      ),
    );
    final animated = reducedMotion
        ? badge
        : success
        ? badge
              .animate(delay: 150.ms)
              .scale(
                begin: const Offset(.65, .65),
                duration: 450.ms,
                curve: Curves.easeOutBack,
              )
        : badge
              .animate(delay: 150.ms)
              .shakeX(duration: 450.ms, hz: 3, amount: 3);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _FeatureCard(
          color: colors.surfaceContainerHigh,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(LucideIcons.fileVideo, color: colors.primary, size: 30),
              const Gap(AppSpacing.small),
              _TextLine(color: color, width: success ? 50 : 25),
            ],
          ),
        ),
        const Gap(AppSpacing.large),
        animated,
      ],
    );
  }

  Widget _panel(ColorScheme colors, Widget child) => Container(
    width: 216,
    height: 90,
    padding: const EdgeInsets.all(AppSpacing.medium),
    decoration: BoxDecoration(
      color: colors.surfaceContainerHigh,
      borderRadius: BorderRadius.circular(AppRadii.large),
    ),
    child: child,
  );
}
