import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';
import '../../logic/subscription_cubit.dart';

final class SubscriptionFeedback extends StatelessWidget {
  const SubscriptionFeedback({required this.state, this.onRetry, super.key});

  final SubscriptionState state;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final failure = state.error;
    final notice = state.message;
    if (failure == null && notice == null) return const SizedBox.shrink();

    return Column(
      children: [
        if (failure != null) ...[
          _FeedbackCard(
            message: _errorText(context, failure),
            isError: true,
            action:
                failure == SubscriptionFailure.billingUnavailable &&
                    onRetry != null
                ? TextButtonComponent(
                    label: context.localeKeys.retry,
                    onPressed: state.isLoading ? null : onRetry,
                  )
                : null,
          ),
          if (notice != null) const Gap(AppSpacing.small),
        ],
        if (notice != null)
          _FeedbackCard(message: _noticeText(context, notice)),
      ],
    );
  }

  String _errorText(BuildContext context, SubscriptionFailure failure) =>
      switch (failure) {
        SubscriptionFailure.billingUnavailable =>
          context.localeKeys.billingUnavailable,
        SubscriptionFailure.purchaseFailed => context.localeKeys.purchaseFailed,
        SubscriptionFailure.restoreFailed => context.localeKeys.restoreFailed,
        SubscriptionFailure.receiptVerificationFailed =>
          context.localeKeys.receiptVerificationFailed,
      };

  String _noticeText(BuildContext context, SubscriptionNotice notice) =>
      switch (notice) {
        SubscriptionNotice.purchaseCancelled =>
          context.localeKeys.purchaseCancelled,
        SubscriptionNotice.purchaseVerified =>
          context.localeKeys.purchaseVerified,
        SubscriptionNotice.purchasesRestored =>
          context.localeKeys.purchasesRestored,
        SubscriptionNotice.noActivePurchaseFound =>
          context.localeKeys.noActivePurchaseFound,
      };
}

final class _FeedbackCard extends StatelessWidget {
  const _FeedbackCard({
    required this.message,
    this.isError = false,
    this.action,
  });

  final String message;
  final bool isError;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final color = isError ? scheme.error : scheme.tertiary;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.medium),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(AppRadii.large),
        border: Border.all(color: color.withValues(alpha: 0.25)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                isError ? Icons.error_outline : Icons.check_circle_outline,
                color: color,
                size: 20,
              ),
              const Gap.horizontal(AppSpacing.small),
              Expanded(
                child: Text(
                  message,
                  style: context.textTheme.bodyMedium?.copyWith(color: color),
                ),
              ),
            ],
          ),
          if (action != null) ...[
            const Gap(AppSpacing.small),
            Align(alignment: AlignmentDirectional.centerEnd, child: action),
          ],
        ],
      ),
    );
  }
}
