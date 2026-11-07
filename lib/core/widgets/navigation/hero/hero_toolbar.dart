import 'package:material_ui/material_ui.dart';

import '../../../extensions/extensions.dart';

final class HeroToolbar extends StatelessWidget {
  const HeroToolbar({
    required this.title,
    required this.opacity,
    this.onBack,
    this.actions = const [],
    super.key,
  });

  final String title;
  final double opacity;
  final VoidCallback? onBack;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (onBack != null)
          BackButton(
            onPressed: onBack,
            style: IconButton.styleFrom(
              backgroundColor: context.colorScheme.surface.withValues(
                alpha: 0.6,
              ),
            ),
          )
        else
          const SizedBox(width: 48),
        Expanded(
          child: Opacity(
            opacity: opacity,
            child: Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        if (actions.isEmpty)
          const SizedBox(width: 48)
        else
          Row(mainAxisSize: MainAxisSize.min, children: actions),
      ],
    );
  }
}
