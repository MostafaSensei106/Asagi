import 'package:material_ui/material_ui.dart';

import '../../constants/app_metadata.dart';
import '../../extensions/extensions.dart';

/// The community's launcher icon, rendered as the in-app brand mark.
///
/// Used by the startup splash and the auth hero so the first thing a member
/// sees is the actual GDG Benha logo instead of a generic glyph.
final class BrandLogo extends StatelessWidget {
  const BrandLogo({this.size = 88, this.elevated = true, super.key});

  final double size;

  /// Adds the soft shadow used when the logo floats over the brand gradient.
  final bool elevated;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return Container(
      width: size,
      height: size,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(size * 0.26),
      ),
      child: Image.asset(
        'assets/icons/icon-512.png',
        fit: BoxFit.cover,
        semanticLabel: AppMetadata.name,
      ),
    );
  }
}
