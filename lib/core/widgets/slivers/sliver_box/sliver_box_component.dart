import 'package:material_ui/material_ui.dart';

class SliverBoxComponent extends StatelessWidget {
  const SliverBoxComponent({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(child: child);
}
