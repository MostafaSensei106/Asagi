import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import '../../logic/subscription_cubit.dart';

final class RestorePurchasesPage extends StatelessWidget {
  const RestorePurchasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSignalProvider<SubscriptionCubit>(
      create: (_) => getIt<SubscriptionCubit>(),
      child: Scaffold(
        appBar: SidePageAppBarComponent(
          title: context.localeKeys.restorePurchases,
        ),
        body: BlocSignalBuilder<SubscriptionCubit, SubscriptionState>(
          buildWhen: (before, after) => before != after,
          builder: (context, state) => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  state.isActive
                      ? context.localeKeys.zumiProActive
                      : context.localeKeys.restorePurchaseDescription,
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: state.isPurchasing
                      ? null
                      : context.read<SubscriptionCubit>().restore,
                  child: Text(
                    state.isPurchasing
                        ? context.localeKeys.checking
                        : context.localeKeys.restorePurchases,
                  ),
                ),
                if (state.error != null)
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(_billingError(context, state.error!)),
                  ),
                if (state.message != null)
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(_noticeText(context, state.message!)),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String _billingError(BuildContext context, String error) => switch (error) {
  'billingUnavailable' => context.localeKeys.billingUnavailable,
  'purchaseFailed' => context.localeKeys.purchaseFailed,
  'restoreFailed' => context.localeKeys.restoreFailed,
  _ => context.localeKeys.receiptVerificationFailed,
};

String _noticeText(
  BuildContext context,
  SubscriptionNotice notice,
) => switch (notice) {
  SubscriptionNotice.purchaseCancelled => context.localeKeys.purchaseCancelled,
  SubscriptionNotice.purchaseVerified => context.localeKeys.purchaseVerified,
  SubscriptionNotice.purchasesRestored => context.localeKeys.purchasesRestored,
  SubscriptionNotice.noActivePurchaseFound =>
    context.localeKeys.noActivePurchaseFound,
};
