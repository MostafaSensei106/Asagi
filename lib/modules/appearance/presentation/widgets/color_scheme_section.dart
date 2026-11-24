import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/utils/theme/app_theme.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';

final class ColorSchemeSection extends StatelessWidget {
  const ColorSchemeSection({
    required this.selectedVariant,
    required this.onChanged,
    this.highContrast = false,
    super.key,
  });

  final bool highContrast;
  final AsagiColorSchemeVariant selectedVariant;
  final ValueChanged<AsagiColorSchemeVariant> onChanged;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ExpressiveSectionHeader(title: context.localeKeys.colorScheme),
      Text(
        context.localeKeys.automaticColorSchemeDescription,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      const Gap(AppSpacing.small),
      LayoutBuilder(
        builder: (context, constraints) {
          const spacing = AppSpacing.small;
          final itemWidth = (constraints.maxWidth - spacing) / 2;

          return Wrap(
            spacing: spacing,
            runSpacing: spacing,
            children: [
              for (final variant in AsagiColorSchemeVariant.values)
                SizedBox(
                  width: itemWidth,
                  child: ChoiceChip(
                    avatar: _PalettePreview(
                      scheme: Theme.of(context).brightness == Brightness.dark
                          ? AppTheme.dark(
                              variant: variant,
                              highContrast: highContrast,
                            ).colorScheme
                          : AppTheme.light(
                              variant: variant,
                              highContrast: highContrast,
                            ).colorScheme,
                    ),
                    showCheckmark: false,
                    label: SizedBox(
                      width: double.infinity,
                      child: Text(
                        _label(context, variant),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    selected: variant == selectedVariant,
                    onSelected: (_) => onChanged(variant),
                    side: BorderSide.none,
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.small,
                      vertical: AppSpacing.xSmall,
                    ),
                    backgroundColor: Theme.of(context)
                        .colorScheme
                        .surfaceContainerHighest,
                    selectedColor: Theme.of(context)
                        .colorScheme
                        .primaryContainer,
                    labelStyle: TextStyle(
                      color: variant == selectedVariant
                          ? Theme.of(context).colorScheme.onPrimaryContainer
                          : Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppRadii.pill),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    ],
  );

  String _label(BuildContext context, AsagiColorSchemeVariant variant) {
    if (variant == AsagiColorSchemeVariant.auto) {
      return context.localeKeys.automaticColorScheme;
    }
    return switch (variant) {
      AsagiColorSchemeVariant.auto => context.localeKeys.automaticColorScheme,
      AsagiColorSchemeVariant.tonalSpot =>
        context.localeKeys.colorSchemeTonalSpot,
      AsagiColorSchemeVariant.fidelity =>
        context.localeKeys.colorSchemeFidelity,
      AsagiColorSchemeVariant.content => context.localeKeys.colorSchemeContent,
      AsagiColorSchemeVariant.expressive =>
        context.localeKeys.colorSchemeExpressive,
      AsagiColorSchemeVariant.fruitSalad =>
        context.localeKeys.colorSchemeFruitSalad,
      AsagiColorSchemeVariant.monochrome =>
        context.localeKeys.colorSchemeMonochrome,
      AsagiColorSchemeVariant.neutral => context.localeKeys.colorSchemeNeutral,
      AsagiColorSchemeVariant.rainbow => context.localeKeys.colorSchemeRainbow,
      AsagiColorSchemeVariant.vibrant => context.localeKeys.colorSchemeVibrant,
    };
  }
}

final class _PalettePreview extends StatelessWidget {
  const _PalettePreview({required this.scheme});
  final ColorScheme scheme;

  @override
  Widget build(BuildContext context) => ExcludeSemantics(
    child: SizedBox.square(
      dimension: 22,
      child: ClipOval(
        child: Row(
          children: [
            for (final color in [
              scheme.primary,
              scheme.secondary,
              scheme.tertiary,
            ])
              Expanded(
                child: ColoredBox(color: color, child: const SizedBox.expand()),
              ),
          ],
        ),
      ),
    ),
  );
}
