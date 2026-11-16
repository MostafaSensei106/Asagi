import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../logic/subscription_cubit.dart';

final class LoyaltyProgressCard extends StatelessWidget {
  const LoyaltyProgressCard({required this.state, super.key});

  final SubscriptionState state;

  @override
  Widget build(BuildContext context) {
    final offer = state.offer;
    final nextPrice = offer == null
        ? null
        : '${offer.currencySymbol}${(offer.rawPrice * (100 - state.nextDiscount) / 100).toStringAsFixed(2)}';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.localeKeys.currentLoyaltyDiscount(state.currentDiscount)),
        const SizedBox(height: 8),
        LinearProgressIndicator(value: state.currentDiscount / 30),
        const SizedBox(height: 8),
        Text(
          nextPrice == null
              ? context.localeKeys.nextMonthLoyaltyDiscount(state.nextDiscount)
              : context.localeKeys.nextMonthLoyaltyPrice(
                  state.nextDiscount,
                  nextPrice,
                ),
        ),
        const SizedBox(height: 20),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(context.localeKeys.loyaltyCancellationWarning),
          ),
        ),
      ],
    );
  }
}
