import 'package:material_ui/material_ui.dart';

import '../../constants/design_system/tokens/radii.dart';
import '../../extensions/extensions.dart';
import 'brand_mark.dart';

/// Theme-aware tile for the approved Kuymo pocket mark.
final class BrandLogo extends StatelessWidget {
  const BrandLogo({this.size = 88, this.elevated = true, super.key});

  final double size;

  /// Adds a subtle shadow when the logo floats over a surface.
  final bool elevated;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return Container(
      width: size,
      height: size,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: scheme.primaryContainer,
        borderRadius: BorderRadius.circular(AppRadii.large),
        boxShadow: elevated
            ? [
                BoxShadow(
                  color: scheme.shadow.withValues(alpha: 0.08),
                  blurRadius: 16,
                  offset: const Offset(0, 4),
                ),
              ]
            : null,
      ),
      child: BrandMark(size: size, color: scheme.onPrimaryContainer),
    );
  }
}
