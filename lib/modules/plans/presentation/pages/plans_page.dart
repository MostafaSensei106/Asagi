import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import '../../logic/subscription_cubit.dart';

final class PlansPage extends StatelessWidget {
  const PlansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSignalProvider<SubscriptionCubit>(
      create: (_) => getIt<SubscriptionCubit>(),
      child: Scaffold(
        appBar: SidePageAppBarComponent(title: context.localeKeys.plans),
        body: BlocSignalBuilder<SubscriptionCubit, SubscriptionState>(
          buildWhen: (before, after) => before != after,
          builder: (context, state) {
            final cubit = context.read<SubscriptionCubit>();
            final price =
                state.offer?.price ??
                (state.isLoading ? 'Loading…' : 'Unavailable');
            return ListView(
              padding: const EdgeInsets.all(24),
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Zumi Pro',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(height: 8),
                        Text('$price / month'),
                        const SizedBox(height: 16),
                        Text(
                          state.isActive
                              ? (context.isArabic
                                    ? 'الاشتراك مفعّل'
                                    : 'Active subscription')
                              : (context.isArabic
                                    ? 'افتح ضغط Discord Nitro وYouTube Shorts والوضع المخصص.'
                                    : 'Unlock Discord Nitro, YouTube Shorts and Custom compression.'),
                        ),
                        const SizedBox(height: 20),
                        FilledButton(
                          onPressed: state.isPurchasing || state.isActive
                              ? null
                              : cubit.purchase,
                          child: Text(
                            state.isPurchasing
                                ? (context.isArabic
                                      ? 'جارٍ المعالجة…'
                                      : 'Please wait…')
                                : (context.isArabic ? 'اشترك' : 'Subscribe'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  context.isArabic
                      ? 'خصم الولاء الحالي: ${state.currentDiscount}%'
                      : 'Loyalty discount: ${state.currentDiscount}%',
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(value: state.currentDiscount / 30),
                const SizedBox(height: 8),
                Text(
                  context.isArabic
                      ? 'الشهر القادم: خصم ولاء ${state.nextDiscount}%${state.offer == null ? '' : ' — السعر المتوقع ${_nextMonthPrice(state)}'}'
                      : 'Next month: ${state.nextDiscount}% loyalty discount${state.offer == null ? '' : ' — estimated ${_nextMonthPrice(state)}'}',
                ),
                const SizedBox(height: 20),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      context.isArabic
                          ? 'إلغاء الاشتراك يعيد السعر الأساسي ويفقدك الخصم المتراكم. عند الاشتراك مجدداً يبدأ الخصم من 2%.'
                          : 'Cancelling resets your accumulated loyalty discount to the base price. If you subscribe again, loyalty starts again at 2%.',
                    ),
                  ),
                ),
                if (state.error != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      state.error!,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ),
                if (state.message != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(state.message!),
                  ),
                TextButton(
                  onPressed: state.isPurchasing ? null : cubit.restore,
                  child: Text(
                    context.isArabic
                        ? 'استعادة المشتريات'
                        : 'Restore purchases',
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

String _nextMonthPrice(SubscriptionState state) {
  final offer = state.offer!;
  final amount = offer.rawPrice * (100 - state.nextDiscount) / 100;
  return '${offer.currencySymbol}${amount.toStringAsFixed(2)}';
}
