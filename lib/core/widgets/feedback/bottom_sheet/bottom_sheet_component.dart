import 'package:material_ui/material_ui.dart';

import '../../../constants/app_config.dart';

/// Modal sheet surface used across the app.
///
/// Call [BottomSheetComponent.show] to present one, passing the content that
/// should appear below the optional [title].
///
/// The component paints the sheet surface itself instead of letting
/// [showModalBottomSheet] do it, so the visible surface can move above the
/// keyboard. The route's own surface is transparent; see [show].
final class BottomSheetComponent extends StatelessWidget {
  const BottomSheetComponent({
    required this.child,
    super.key,
    this.title,
    this.showHandle = true,
  });

  final Widget child;

  /// Optional heading rendered above [child].
  final String? title;

  /// Draws the small grabber at the top of the sheet. Dragging to dismiss is
  /// handled by the route itself, so this is purely decorative.
  final bool showHandle;

  /// Shows [child] in a modal sheet and completes with the value the content
  /// pops with.
  static Future<T?> show<T>({
    required BuildContext context,
    required Widget child,
    String? title,
    bool isScrollControlled = true,
    bool isDismissible = true,
    bool enableDrag = true,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: isScrollControlled,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      useSafeArea: true,
      // The route's surface must stay out of the way: [BottomSheetComponent]
      // paints its own rounded surface and lifts it above the keyboard. A
      // route-painted background would still stretch underneath the keyboard,
      // which made the sheet look like it was covered by it.
      backgroundColor: Colors.transparent,
      elevation: 0,
      showDragHandle: false,
      builder: (context) => BottomSheetComponent(title: title, child: child),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // Sheets normally sit on the bottom edge, so the keyboard would cover the
    // last fields and the primary action. Lifting the surface by the reported
    // inset keeps every field (and the submit button) reachable while typing.
    final keyboardInset = MediaQuery.viewInsetsOf(context).bottom;

    return SafeArea(
      child: AnimatedPadding(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeOut,
        padding: EdgeInsets.only(bottom: keyboardInset),
        child: Material(
          color: theme.colorScheme.surface,
          clipBehavior: Clip.antiAlias,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(AppConfig.outBorderRadius),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppConfig.padding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (showHandle)
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: AppConfig.paddingHalf,
                    ),
                    child: _DragHandle(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                if (title != null) ...[
                  Text(
                    title!,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: AppConfig.paddingHalf),
                ],
                Flexible(
                  child: SingleChildScrollView(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    child: child,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DragHandle extends StatelessWidget {
  const _DragHandle({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 36,
        height: 4,
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.35),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }
}
