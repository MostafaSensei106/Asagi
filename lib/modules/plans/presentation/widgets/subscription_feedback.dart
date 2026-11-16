import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../logic/subscription_cubit.dart';

final class SubscriptionFeedback extends StatelessWidget {
  const SubscriptionFeedback({required this.state, super.key});

  final SubscriptionState state;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if (state.error case final failure?)
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            _errorText(context, failure),
            style: TextStyle(color: Theme.of(context).colorScheme.error),
          ),
        ),
      if (state.message case final notice?)
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(_noticeText(context, notice)),
        ),
    ],
  );

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
