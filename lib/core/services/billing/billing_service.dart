import 'billing_models.dart';

export 'billing_models.dart';

abstract interface class BillingService {
  Future<SubscriptionOfferInfo?> fetchMonthlyPlan(String productId);

  Future<PurchaseReceiptPayload?> purchaseMonthlyPlan({String? offerToken});

  Future<PurchaseReceiptPayload?> restoreActivePurchase();

  Stream<PurchaseReceiptPayload> get purchaseUpdates;
}

abstract interface class PurchaseProofStore {
  PurchaseReceiptPayload? get current;

  void save(PurchaseReceiptPayload receipt);

  void clear();
}
