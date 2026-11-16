import 'package:freezed_annotation/freezed_annotation.dart';

part 'billing_models.freezed.dart';

@freezed
sealed class SubscriptionOfferInfo with _$SubscriptionOfferInfo {
  const factory SubscriptionOfferInfo({
    required String productId,
    required String price,
    required double rawPrice,
    required String currencyCode,
    required String currencySymbol,
    String? offerToken,
  }) = _SubscriptionOfferInfo;
}

@freezed
sealed class PurchaseReceiptPayload with _$PurchaseReceiptPayload {
  const factory PurchaseReceiptPayload({
    required String originalJson,
    required String signature,
    required String purchaseToken,
    required String productId,
    String? loyaltyToken,
  }) = _PurchaseReceiptPayload;
}
