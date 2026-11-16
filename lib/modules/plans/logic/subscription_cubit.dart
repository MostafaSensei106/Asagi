import 'dart:async';
import 'dart:convert';

import 'package:bloc_signals/bloc_signals.dart';
import 'package:injectable/injectable.dart';

import '../../../core/native/rust/api.dart' as rust;
import '../../../core/native/rust/frb_generated.dart';
import '../../../core/services/billing/billing_service.dart';

const proMonthlyProductId = 'zumi_pro_monthly';

enum SubscriptionNotice {
  purchaseCancelled,
  purchaseVerified,
  purchasesRestored,
  noActivePurchaseFound,
}

final class SubscriptionState {
  const SubscriptionState({
    this.offer,
    this.isLoading = false,
    this.isPurchasing = false,
    this.isActive = false,
    this.currentDiscount = 0,
    this.nextDiscount = 2,
    this.months = 0,
    this.error,
    this.message,
  });
  final SubscriptionOfferInfo? offer;
  final bool isLoading;
  final bool isPurchasing;
  final bool isActive;
  final int currentDiscount;
  final int nextDiscount;
  final int months;
  final String? error;
  final SubscriptionNotice? message;
  SubscriptionState copyWith({
    SubscriptionOfferInfo? offer,
    bool? isLoading,
    bool? isPurchasing,
    bool? isActive,
    int? currentDiscount,
    int? nextDiscount,
    int? months,
    String? error,
    SubscriptionNotice? message,
  }) => SubscriptionState(
    offer: offer ?? this.offer,
    isLoading: isLoading ?? false,
    isPurchasing: isPurchasing ?? false,
    isActive: isActive ?? this.isActive,
    currentDiscount: currentDiscount ?? this.currentDiscount,
    nextDiscount: nextDiscount ?? this.nextDiscount,
    months: months ?? this.months,
    error: error,
    message: message,
  );
}

@injectable
final class SubscriptionCubit extends CubitSignal<SubscriptionState> {
  SubscriptionCubit(this._billing, this._proofs)
    : super(initialState: const SubscriptionState()) {
    _updates = _billing.purchaseUpdates.listen(
      (receipt) => unawaited(_verify(receipt)),
    );
    unawaited(load());
  }
  final BillingService _billing;
  final PurchaseProofStore _proofs;
  late final StreamSubscription<PurchaseReceiptPayload> _updates;

  Future<void> load() async {
    emit(stateValue.copyWith(isLoading: true));
    try {
      final offer = await _billing.fetchMonthlyPlan(proMonthlyProductId);
      if (!isClosed) emit(stateValue.copyWith(offer: offer));
    } catch (_) {
      if (!isClosed) emit(stateValue.copyWith(error: 'billingUnavailable'));
    }
  }

  Future<void> purchase() async {
    emit(stateValue.copyWith(isPurchasing: true));
    try {
      final receipt = await _billing.purchaseMonthlyPlan(
        offerToken: stateValue.offer?.offerToken,
      );
      if (receipt != null) await _verify(receipt);
      if (!isClosed) {
        emit(
          stateValue.copyWith(
            isPurchasing: false,
            message: receipt == null
                ? SubscriptionNotice.purchaseCancelled
                : SubscriptionNotice.purchaseVerified,
          ),
        );
      }
    } catch (_) {
      if (!isClosed) {
        emit(stateValue.copyWith(isPurchasing: false, error: 'purchaseFailed'));
      }
    }
  }

  Future<void> restore() async {
    emit(stateValue.copyWith(isPurchasing: true));
    try {
      final receipt = await _billing.restoreActivePurchase();
      if (receipt == null) {
        emit(
          stateValue.copyWith(
            isPurchasing: false,
            message: SubscriptionNotice.noActivePurchaseFound,
          ),
        );
      } else {
        await _verify(receipt);
        emit(
          stateValue.copyWith(
            isPurchasing: false,
            message: SubscriptionNotice.purchasesRestored,
          ),
        );
      }
    } catch (_) {
      if (!isClosed) {
        emit(stateValue.copyWith(isPurchasing: false, error: 'restoreFailed'));
      }
    }
  }

  Future<void> _verify(PurchaseReceiptPayload receipt) async {
    try {
      await RustLib.init();
      final status = await rust.verifySubscriptionReceipt(
        originalJson: receipt.originalJson,
        signatureBytes: base64Decode(receipt.signature),
        loyaltyToken: receipt.loyaltyToken,
      );
      if (status.isActive && receipt.productId == proMonthlyProductId) {
        _proofs.save(receipt);
      } else {
        _proofs.clear();
      }
      if (!isClosed) {
        emit(
          stateValue.copyWith(
            isActive:
                status.isActive && receipt.productId == proMonthlyProductId,
            months: status.consecutiveMonths,
            currentDiscount: status.currentDiscountPercent,
            nextDiscount: status.nextMonthDiscountPercent,
          ),
        );
      }
    } catch (_) {
      _proofs.clear();
      if (!isClosed) {
        emit(stateValue.copyWith(isActive: false, error: 'receiptVerificationFailed'));
      }
    }
  }

  @override
  Future<void> close() async {
    await _updates.cancel();
    await super.close();
  }
}
