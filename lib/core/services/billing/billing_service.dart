import 'dart:async';

import 'package:injectable/injectable.dart';

final class SubscriptionOfferInfo {
  const SubscriptionOfferInfo({
    required this.productId,
    required this.price,
    required this.rawPrice,
    required this.currencyCode,
    required this.currencySymbol,
    this.offerToken,
  });
  final String productId;
  final String price;
  final double rawPrice;
  final String currencyCode;
  final String currencySymbol;
  final String? offerToken;
}

final class PurchaseReceiptPayload {
  const PurchaseReceiptPayload({
    required this.originalJson,
    required this.signature,
    required this.purchaseToken,
    required this.productId,
    this.loyaltyToken,
  });
  final String originalJson;
  final String signature;
  final String purchaseToken;
  final String productId;
  final String? loyaltyToken;
}

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

@LazySingleton(as: PurchaseProofStore)
final class InMemoryPurchaseProofStore implements PurchaseProofStore {
  PurchaseReceiptPayload? _current;
  @override
  PurchaseReceiptPayload? get current => _current;
  @override
  void save(PurchaseReceiptPayload receipt) => _current = receipt;
  @override
  void clear() => _current = null;
}

/// Deterministic implementation for tests and local development.
final class FakeBillingService implements BillingService {
  FakeBillingService({this.offer, this.receipt});
  final SubscriptionOfferInfo? offer;
  final PurchaseReceiptPayload? receipt;
  final StreamController<PurchaseReceiptPayload> _updates =
      StreamController.broadcast();
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
  Future<void> dispose() => _updates.close();
}
