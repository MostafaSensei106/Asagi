import 'package:asagi/core/di/di.dart';
import 'package:asagi/core/services/billing/billing_service.dart';
import 'package:asagi/core/services/billing/fake_billing_service.dart';
import 'package:asagi/core/services/billing/in_memory_purchase_proof_store.dart';
import 'package:asagi/l10n/app_localizations.dart';
import 'package:asagi/modules/plans/logic/subscription_cubit.dart';
import 'package:asagi/modules/plans/presentation/pages/plans_page.dart';
import 'package:asagi/modules/plans/presentation/pages/restore_purchases_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  late FakeBillingService billing;
  late InMemoryPurchaseProofStore proofs;

  setUp(() async {
    await getIt.reset();
    billing = FakeBillingService(
      offer: const SubscriptionOfferInfo(
        productId: proMonthlyProductId,
        price: 'EGP 99.99',
        rawPrice: 99.99,
        currencyCode: 'EGP',
        currencySymbol: 'EGP ',
      ),
    );
    proofs = InMemoryPurchaseProofStore();
    getIt.registerFactory<SubscriptionCubit>(
      () => SubscriptionCubit(billing, proofs),
    );
  });

  tearDown(() async {
    await getIt.reset();
    await billing.dispose();
  });

  test(
    'subscription cubit reads an offer and restores through the fake',
    () async {
      final cubit = getIt<SubscriptionCubit>();
      await Future<void>.delayed(Duration.zero);
      expect(cubit.stateValue.offer?.price, 'EGP 99.99');

      await cubit.restore();

      expect(
        cubit.stateValue.message,
        SubscriptionNotice.noActivePurchaseFound,
      );
      await cubit.close();
    },
  );

  testWidgets('paywall displays localized Play price and loyalty progress', (
    tester,
  ) async {
    await tester.pumpWidget(_app(const PlansPage()));
    await tester.pumpAndSettle();

    expect(find.text('Asagi Pro'), findsOneWidget);
    expect(find.text('EGP 99.99 / month'), findsOneWidget);
    expect(find.text('Loyalty discount: 0%'), findsOneWidget);
    expect(find.textContaining('Next month: 2%'), findsOneWidget);
  });

  testWidgets('restore page uses the fake billing implementation', (
    tester,
  ) async {
    await tester.pumpWidget(_app(const RestorePurchasesPage()));
    await tester.pumpAndSettle();
    await tester.tap(find.byType(FilledButton));
    await tester.pumpAndSettle();

    expect(find.text('No active purchase found.'), findsOneWidget);
  });
}

Widget _app(Widget page) => MaterialApp(
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  home: page,
);
