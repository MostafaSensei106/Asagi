import 'dart:async';

import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:injectable/injectable.dart';

import 'billing_service.dart';

/// Google Play adapter. Plugin types are intentionally contained in this file.
@LazySingleton(as: BillingService)
final class GooglePlayBillingService implements BillingService {
  GooglePlayBillingService() : _store = InAppPurchase.instance {
    _subscription = _store.purchaseStream.listen(
      _onPurchases,
      onError: _onPurchaseStreamError,
    );
  }

  final InAppPurchase _store;
  final _updates = StreamController<PurchaseReceiptPayload>.broadcast();
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  final Map<String, ProductDetails> _products = {};
  final Map<String, Completer<PurchaseReceiptPayload?>> _pending = {};

  @override
  Stream<PurchaseReceiptPayload> get purchaseUpdates => _updates.stream;

  @override
  Future<SubscriptionOfferInfo?> fetchMonthlyPlan(String productId) async {
    if (!await _store.isAvailable()) return null;
    final response = await _store.queryProductDetails({productId});
    if (response.error != null) throw StateError(response.error!.message);
    final product = response.productDetails
        .where((item) => item.id == productId)
        .firstOrNull;
    if (product == null) return null;
    _products[productId] = product;
    String? offerToken;
    var localizedPrice = product.price;
    var rawPrice = product.rawPrice;
    if (product is GooglePlayProductDetails) {
      final details = product.productDetails.subscriptionOfferDetails;
      if (details != null && details.isNotEmpty) {
        var selected = details.first;
        for (final candidate in details) {
          if (candidate.offerId == null) {
            selected = candidate;
            break;
          }
        }
        offerToken = selected.offerIdToken;
        if (selected.pricingPhases.isNotEmpty) {
          final recurring = selected.pricingPhases.last;
          localizedPrice = recurring.formattedPrice;
          rawPrice = recurring.priceAmountMicros / 1000000;
        }
      }
    }
    return SubscriptionOfferInfo(
      productId: product.id,
      price: localizedPrice,
      rawPrice: rawPrice,
      currencyCode: product.currencyCode,
      currencySymbol: product.currencySymbol,
      offerToken: offerToken,
    );
  }

  @override
  Future<PurchaseReceiptPayload?> purchaseMonthlyPlan({
    String? offerToken,
  }) async {
    final product = _products.values.firstOrNull;
    if (product == null) throw StateError('E_BILLING_PRODUCT_NOT_LOADED');
    final completer = Completer<PurchaseReceiptPayload?>();
    _pending[product.id] = completer;
    final param = product is GooglePlayProductDetails
        ? GooglePlayPurchaseParam(
            productDetails: product,
            offerToken: offerToken,
          )
        : PurchaseParam(productDetails: product);
    final started = await _store.buyNonConsumable(purchaseParam: param);
    if (!started && !completer.isCompleted) {
      _pending.remove(product.id);
      return null;
    }
    return completer.future;
  }

  @override
  Future<PurchaseReceiptPayload?> restoreActivePurchase() async {
    final completer = Completer<PurchaseReceiptPayload?>();
    _pending['restore'] = completer;
    await _store.restorePurchases();
    // Purchase updates complete this when a matching restored receipt arrives.
    return completer.future.timeout(
      const Duration(seconds: 30),
      onTimeout: () {
        _pending.remove('restore');
        return null;
      },
    );
  }

  void _onPurchases(List<PurchaseDetails> purchases) {
    for (final purchase in purchases) {
      final receipt = _receipt(purchase);
      if (receipt != null &&
          (purchase.status == PurchaseStatus.purchased ||
              purchase.status == PurchaseStatus.restored)) {
        _updates.add(receipt);
        _pending.remove(purchase.productID)?.complete(receipt);
        _pending.remove('restore')?.complete(receipt);
      } else if (purchase.status == PurchaseStatus.canceled ||
          purchase.status == PurchaseStatus.error) {
        final pending = _pending.remove(purchase.productID);
        if (pending != null && !pending.isCompleted) pending.complete(null);
      }
      if (purchase.pendingCompletePurchase) {
        unawaited(_completePurchase(purchase));
      }
    }
  }

  Future<void> _completePurchase(PurchaseDetails purchase) async {
    try {
      await _store.completePurchase(purchase);
    } catch (_) {
      _updates.addError(StateError('E_BILLING_ACK'));
    }
  }

  void _onPurchaseStreamError(Object error, StackTrace stackTrace) {
    for (final completer in _pending.values) {
      if (!completer.isCompleted) {
        completer.completeError(StateError('E_BILLING_STREAM'));
      }
    }
    _pending.clear();
  }

  PurchaseReceiptPayload? _receipt(PurchaseDetails purchase) {
    if (purchase is! GooglePlayPurchaseDetails) return null;
    final native = purchase.billingClientPurchase;
    return PurchaseReceiptPayload(
      originalJson: native.originalJson,
      signature: native.signature,
      purchaseToken: native.purchaseToken,
      productId: purchase.productID,
    );
  }

  Future<void> dispose() async {
    await _subscription?.cancel();
    await _updates.close();
  }
}
