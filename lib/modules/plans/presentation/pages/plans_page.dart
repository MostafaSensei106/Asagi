import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import '../../logic/subscription_cubit.dart';
import '../widgets/loyalty_progress_card.dart';
import '../widgets/subscription_feedback.dart';
import '../widgets/subscription_offer_card.dart';

final class PlansPage extends StatelessWidget {
  const PlansPage({super.key});

  @override
  Widget build(BuildContext context) => BlocSignalProvider<SubscriptionCubit>(
    create: (_) => getIt<SubscriptionCubit>(),
    child: Scaffold(
      appBar: SidePageAppBarComponent(title: context.localeKeys.plans),
      body: BlocSignalBuilder<SubscriptionCubit, SubscriptionState>(
        buildWhen: (before, after) => before != after,
        builder: (context, state) {
          final cubit = context.read<SubscriptionCubit>();
          return ListView(
            padding: const EdgeInsets.all(24),
            children: [
              SubscriptionOfferCard(state: state, onSubscribe: cubit.purchase),
              const SizedBox(height: 20),
              LoyaltyProgressCard(state: state),
              SubscriptionFeedback(state: state),
              TextButton(
                onPressed: state.isPurchasing ? null : cubit.restore,
                child: Text(context.localeKeys.restorePurchases),
              ),
            ],
          );
        },
      ),
    ),
  );
}
