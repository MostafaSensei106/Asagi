import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../logic/subscription_cubit.dart';

final class SubscriptionOfferCard extends StatelessWidget {
  const SubscriptionOfferCard({
    required this.state,
    required this.onSubscribe,
    super.key,
  });

  final SubscriptionState state;
  final VoidCallback onSubscribe;

  @override
  Widget build(BuildContext context) {
    final price =
        state.offer?.price ??
        (state.isLoading
            ? context.localeKeys.loading
            : context.localeKeys.planUnavailable);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.localeKeys.zumiProTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(context.localeKeys.subscriptionPerMonth(price)),
            const SizedBox(height: 16),
            Text(
              state.isActive
                  ? context.localeKeys.subscriptionActive
                  : context.localeKeys.proFeaturesDescription,
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: state.isPurchasing || state.isActive
                  ? null
                  : onSubscribe,
              child: Text(
                state.isPurchasing
                    ? context.localeKeys.pleaseWait
                    : context.localeKeys.subscribe,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
