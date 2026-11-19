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
      DropdownButtonFormField<AsagiColorSchemeVariant>(
        initialValue: selectedVariant,
        decoration: InputDecoration(
          labelText: context.localeKeys.colorScheme,
          border: const OutlineInputBorder(),
        ),
        items: AsagiColorSchemeVariant.values
            .map(
              (variant) => DropdownMenuItem(
                value: variant,
                child: Text(_label(context, variant)),
              ),
            )
            .toList(growable: false),
        onChanged: (variant) {
          if (variant != null && variant != selectedVariant) onChanged(variant);
        },
      ),
    ],
  );

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
