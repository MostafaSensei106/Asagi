import 'package:material_ui/material_ui.dart';

final class SectionHeaderComponent extends StatelessWidget {
  const SectionHeaderComponent({
    required this.title,
    super.key,
    this.onActionPressed,
    this.actionLabel,
  });
  final String title;
  final VoidCallback? onActionPressed;
  final String? actionLabel;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title, style: Theme.of(context).textTheme.titleMedium),
      if (onActionPressed != null)
        TextButton(
          onPressed: onActionPressed,
          child: Text(actionLabel ?? 'View All'),
        ),
    ],
  );
}
