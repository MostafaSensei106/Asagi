import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';
import '../../logic/subscription_cubit.dart';
import '../widgets/subscription_feedback.dart';
import '../widgets/subscription_offer_card.dart';

final class PlansPage extends StatelessWidget {
  const PlansPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: SidePageAppBarComponent(title: context.localeKeys.plansPurchases),
    body: BlocSignalBuilder<SubscriptionCubit, SubscriptionState>(
      buildWhen: (before, after) => before != after,
      builder: (context, state) {
        final cubit = context.read<SubscriptionCubit>();
        return ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.small,
          ),
          children: [
            SubscriptionOfferCard(state: state, onSubscribe: cubit.purchase),
            const Gap(AppSpacing.large),
            SubscriptionFeedback(state: state, onRetry: cubit.load),
            const Gap(AppSpacing.small),
            Center(
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButtonComponent.icon(
                  icon: AsagiIcons.restorePurchases,
                  label: context.localeKeys.restorePurchases,
                  //  isEnable: !state.isPurchasing,
                  onPressed: !state.isPurchasing ? cubit.restore : null,
                ),
              ),
            ),
          ],
        );
      },
    ),
  );
}
