import 'package:material_ui/material_ui.dart';

import '../../../constants/design_system/tokens/tokens.dart';
import '../divider/divider_component.dart';

class ListTileGroup extends StatelessWidget {
  const ListTileGroup({required this.children, super.key});

  final List<Widget> children;

  static bool contains(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<_ListTileGroupScope>() != null;

  @override
  Widget build(BuildContext context) {
    return _ListTileGroupScope(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppRadii.large),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var index = 0; index < children.length; index++) ...[
              if (index > 0) const DividerComponent(),
              children[index],
            ],
          ],
        ),
      ),
    );
  }
}

class _ListTileGroupScope extends InheritedWidget {
  const _ListTileGroupScope({required super.child});

  @override
  bool updateShouldNotify(_ListTileGroupScope oldWidget) => false;
}
