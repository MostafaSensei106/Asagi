import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_ui/material_ui.dart';

import '../../constants/app_metadata.dart';

/// Kuymo's pocket symbol. Its orientation stays fixed in RTL layouts.
final class BrandMark extends StatelessWidget {
  const BrandMark({
    this.size = 48,
    this.color,
    this.decorative = false,
    super.key,
  });

  final double size;
  final Color? color;
  final bool decorative;

  @override
  Widget build(BuildContext context) => SvgPicture.asset(
    size < 24
        ? 'assets/brand/kuymo-symbol-small.svg'
        : 'assets/brand/kuymo-symbol.svg',
    width: size,
    height: size,
    colorFilter: ColorFilter.mode(
      color ?? Theme.of(context).colorScheme.onSurface,
      BlendMode.srcIn,
    ),
    semanticsLabel: decorative ? null : AppMetadata.name,
    excludeFromSemantics: decorative,
  );
}
