import 'package:material_ui/material_ui.dart';

/// Centered progress indicator with an optional caption.
final class LoadingIndicatorComponent extends StatelessWidget {
  const LoadingIndicatorComponent({super.key, this.value, this.message});

  /// Progress in the `0.0`–`1.0` range, or `null` for an indeterminate spinner.
  final double? value;

  /// Optional caption shown beneath the spinner.
  final String? message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final indicator = CircularProgressIndicator(
      value: value,
      color: theme.colorScheme.primary,
    );

    if (message == null) return Center(child: indicator);

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          indicator,
          const SizedBox(height: 16),
          Text(
            message!,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
