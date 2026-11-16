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
                      ? (context.isArabic ? 'اشتراك Zumi Pro مفعّل' : 'Zumi Pro is active')
                      : (context.isArabic
                            ? 'استعد المشتريات المرتبطة بحساب Google Play هذا.'
                            : 'Restore purchases made with this Google Play account.'),
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: state.isPurchasing
                      ? null
                      : context.read<SubscriptionCubit>().restore,
                  child: Text(
                    state.isPurchasing
                        ? (context.isArabic ? 'جارٍ التحقق…' : 'Checking…')
                        : (context.isArabic ? 'استعادة المشتريات' : 'Restore purchases'),
                  ),
                ),
                if (state.error != null)
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(state.error!),
                  ),
                if (state.message != null)
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(context.isArabic && state.message == 'No active purchase found.'
                        ? 'لم يتم العثور على شراء نشط.'
                        : state.message!),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
