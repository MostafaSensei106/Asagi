import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/utils/theme/app_theme.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';

final class ColorSchemeSection extends StatelessWidget {
  const ColorSchemeSection({
    required this.selectedVariant,
    required this.onChanged,
    super.key,
  });

  final AsagiColorSchemeVariant selectedVariant;
  final ValueChanged<AsagiColorSchemeVariant> onChanged;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ExpressiveSectionHeader(title: context.localeKeys.colorScheme),
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
                    avatar: Icon(_icon(variant), size: 18),
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

  IconData _icon(AsagiColorSchemeVariant variant) => switch (variant) {
    AsagiColorSchemeVariant.auto => Icons.auto_awesome,
    AsagiColorSchemeVariant.tonalSpot => Icons.palette_outlined,
    AsagiColorSchemeVariant.fidelity => Icons.center_focus_strong,
    AsagiColorSchemeVariant.content => Icons.layers_outlined,
    AsagiColorSchemeVariant.expressive => Icons.auto_awesome_outlined,
    AsagiColorSchemeVariant.fruitSalad => Icons.eco_outlined,
    AsagiColorSchemeVariant.monochrome => Icons.contrast,
    AsagiColorSchemeVariant.neutral => Icons.circle_outlined,
    AsagiColorSchemeVariant.rainbow => Icons.gradient,
    AsagiColorSchemeVariant.vibrant => Icons.water_drop_outlined,
  };

  String _label(BuildContext context, AsagiColorSchemeVariant variant) {
    if (variant == AsagiColorSchemeVariant.auto) {
      return context.localeKeys.automaticColorScheme;
    }
    final words = variant.name.replaceAllMapped(
      RegExp(r'[A-Z]'),
      (match) => ' ${match.group(0)!.toLowerCase()}',
    );
    return words[0].toUpperCase() + words.substring(1);
  }
}
