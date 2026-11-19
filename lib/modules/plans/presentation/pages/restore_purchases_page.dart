import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import '../../logic/subscription_cubit.dart';
import '../widgets/subscription_feedback.dart';

final class RestorePurchasesPage extends StatelessWidget {
  const RestorePurchasesPage({super.key});

  @override
  Widget build(BuildContext context) => BlocSignalProvider<SubscriptionCubit>(
    create: (_) => getIt<SubscriptionCubit>(),
    child: Scaffold(
      appBar: SidePageAppBarComponent(
        title: context.localeKeys.restorePurchases,
      ),
      body: BlocSignalBuilder<SubscriptionCubit, SubscriptionState>(
        buildWhen: (before, after) => before != after,
        builder: (context, state) => Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  state.isActive
                      ? context.localeKeys.asagiProActive
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
                SubscriptionFeedback(state: state),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
