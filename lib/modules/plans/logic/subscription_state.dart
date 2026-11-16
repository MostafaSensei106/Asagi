part of 'subscription_cubit.dart';

enum SubscriptionNotice {
  purchaseCancelled,
  purchaseVerified,
  purchasesRestored,
  noActivePurchaseFound,
}

enum SubscriptionFailure {
  billingUnavailable,
  purchaseFailed,
  restoreFailed,
  receiptVerificationFailed,
}

@freezed
sealed class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState({
    SubscriptionOfferInfo? offer,
    @Default(false) bool isLoading,
    @Default(false) bool isPurchasing,
    @Default(false) bool isActive,
    @Default(0) int currentDiscount,
    @Default(2) int nextDiscount,
    @Default(0) int months,
    SubscriptionFailure? error,
    SubscriptionNotice? message,
  }) = _SubscriptionState;
}
