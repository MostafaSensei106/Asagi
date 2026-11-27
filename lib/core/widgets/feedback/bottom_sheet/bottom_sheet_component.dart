import 'dart:math' as math;

import 'package:material_ui/material_ui.dart';

import '../../design_system/tokens/tokens.dart';

/// A bounded modal surface with scrollable content and an optional fixed footer.
final class BottomSheetComponent extends StatelessWidget {
  const BottomSheetComponent({
    required this.child,
    super.key,
    this.title,
    this.footer,
    this.onClose,
    this.showHandle = true,
  });

  final Widget child;
  final String? title;
  final Widget? footer;
  final VoidCallback? onClose;
  final bool showHandle;

  /// Supply [builder] when the sheet owns state shared by its body and footer.
  /// That builder returns a [BottomSheetComponent]; simple sheets use [child].
  static Future<T?> show<T>({
    required BuildContext context,
    Widget? child,
    WidgetBuilder? builder,
    String? title,
    Widget? footer,
    bool isScrollControlled = true,
    bool isDismissible = true,
    bool enableDrag = true,
  }) {
    assert((child == null) != (builder == null));
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: isScrollControlled,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      showDragHandle: false,
      builder:
          builder ??
          (context) => BottomSheetComponent(
            title: title,
            footer: footer,
            onClose: title == null ? null : () => Navigator.of(context).pop(),
            child: child!,
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final keyboardInset = MediaQuery.viewInsetsOf(context).bottom;
    final reduceMotion = MediaQuery.disableAnimationsOf(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        return AnimatedPadding(
          duration: reduceMotion ? Duration.zero : AppMotion.fast,
          padding: EdgeInsets.only(bottom: keyboardInset),
          child: SafeArea(
            top: false,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 640,
                maxHeight:
                    math.max(0, constraints.maxHeight - keyboardInset) * .94,
              ),
              child: Material(
                color: theme.colorScheme.surface,
                clipBehavior: Clip.antiAlias,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(AppRadii.xLarge),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.large),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (showHandle)
                        Center(
                          child: Container(
                            margin: const EdgeInsets.only(
                              bottom: AppSpacing.small,
                            ),
                            width: 36,
                            height: 4,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.outlineVariant,
                              borderRadius: BorderRadius.circular(
                                AppRadii.pill,
                              ),
                            ),
                          ),
                        ),
                      if (title != null)
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: AppSpacing.medium,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  title!,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              if (onClose != null)
                                IconButton(
                                  tooltip: MaterialLocalizations.of(context)
                                      .closeButtonTooltip,
                                  onPressed: onClose,
                                  icon: const Icon(Icons.close),
                                ),
                            ],
                          ),
                        ),
                      Flexible(
                        child: SingleChildScrollView(
                          keyboardDismissBehavior:
                              ScrollViewKeyboardDismissBehavior.onDrag,
                          child: child,
                        ),
                      ),
                      if (footer != null) ...[
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: AppSpacing.medium,
                          ),
                          child: Divider(height: 1),
                        ),
                        footer!,
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
