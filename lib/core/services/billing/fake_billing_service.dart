import 'dart:async';

import 'billing_service.dart';

final class FakeBillingService implements BillingService {
  FakeBillingService({this.offer, this.receipt});

  final SubscriptionOfferInfo? offer;
  final PurchaseReceiptPayload? receipt;
  final StreamController<PurchaseReceiptPayload> _updates =
      StreamController<PurchaseReceiptPayload>.broadcast();

  @override
  Future<SubscriptionOfferInfo?> fetchMonthlyPlan(String productId) async =>
      offer;

  @override
  Future<PurchaseReceiptPayload?> purchaseMonthlyPlan({
    String? offerToken,
  }) async => receipt;

  @override
  Future<PurchaseReceiptPayload?> restoreActivePurchase() async => receipt;

  @override
  Stream<PurchaseReceiptPayload> get purchaseUpdates => _updates.stream;

  Future<void> emitPurchase(PurchaseReceiptPayload receipt) =>
      _updates.add(receipt);

  Future<void> dispose() => _updates.close();
}
