import 'package:material_ui/material_ui.dart';

class SpacingComponent extends StatelessWidget {
  const SpacingComponent.horizontal(double size, {super.key})
    : width = size,
      height = 0;

  const SpacingComponent.vertical(double size, {super.key})
    : width = 0,
      height = size;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) => SizedBox(width: width, height: height);
}
