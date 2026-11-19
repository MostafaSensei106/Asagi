import 'dart:async';
import 'dart:convert';

import 'package:bloc_signals/bloc_signals.dart';
import 'package:injectable/injectable.dart';

import '../../../core/native/rust/api.dart' as rust;
import '../../../core/native/rust/frb_generated.dart';
import '../../../core/services/billing/billing_service.dart';
import 'subscription_state.dart';

export 'subscription_state.dart';

const proMonthlyProductId = 'asagi_pro_monthly';

@injectable
final class SubscriptionCubit extends CubitSignal<SubscriptionState> {
  SubscriptionCubit(this._billing, this._proofs)
    : super(initialState: const SubscriptionState()) {
    _updates = _billing.purchaseUpdates.listen(
      (receipt) => unawaited(_verify(receipt)),
      onError: _onPurchaseUpdateError,
    );
    unawaited(load());
  }
  final BillingService _billing;
  final PurchaseProofStore _proofs;
  late final StreamSubscription<PurchaseReceiptPayload> _updates;

  void _onPurchaseUpdateError(Object _) {
    if (!isClosed) {
      emit(
        stateValue.copyWith(
          isPurchasing: false,
          error: SubscriptionFailure.purchaseFailed,
        ),
      );
    }
  }

  Future<void> load() async {
    emit(stateValue.copyWith(isLoading: true));
    try {
      final offer = await _billing.fetchMonthlyPlan(proMonthlyProductId);
      if (!isClosed) {
        emit(stateValue.copyWith(offer: offer, isLoading: false, error: null));
      }
    } catch (_) {
      if (!isClosed) {
        emit(
          stateValue.copyWith(
            isLoading: false,
            error: SubscriptionFailure.billingUnavailable,
          ),
        );
      }
    }
  }

  Future<void> purchase() async {
    emit(stateValue.copyWith(isPurchasing: true));
    try {
      final receipt = await _billing.purchaseMonthlyPlan(
        offerToken: stateValue.offer?.offerToken,
      );
      if (isClosed) return;
      final verified = receipt != null && await _verify(receipt);
      if (!isClosed) {
        emit(
          stateValue.copyWith(
            isPurchasing: false,
            message: receipt == null
                ? SubscriptionNotice.purchaseCancelled
                : verified
                ? SubscriptionNotice.purchaseVerified
                : null,
          ),
        );
      }
    } catch (_) {
      if (!isClosed) {
        emit(
          stateValue.copyWith(
            isPurchasing: false,
            error: SubscriptionFailure.purchaseFailed,
          ),
        );
      }
    }
  }

  Future<void> restore() async {
    emit(stateValue.copyWith(isPurchasing: true));
    try {
      final receipt = await _billing.restoreActivePurchase();
      if (isClosed) return;
      if (receipt == null) {
        emit(
          stateValue.copyWith(
            isPurchasing: false,
            message: SubscriptionNotice.noActivePurchaseFound,
          ),
        );
      } else {
        final verified = await _verify(receipt);
        if (isClosed) return;
        emit(
          stateValue.copyWith(
            isPurchasing: false,
            message: verified ? SubscriptionNotice.purchasesRestored : null,
          ),
        );
      }
    } catch (_) {
      if (!isClosed) {
        emit(
          stateValue.copyWith(
            isPurchasing: false,
            error: SubscriptionFailure.restoreFailed,
          ),
        );
      }
    }
  }

  Future<bool> _verify(PurchaseReceiptPayload receipt) async {
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
      return status.isActive && receipt.productId == proMonthlyProductId;
    } catch (_) {
      _proofs.clear();
      if (!isClosed) {
        emit(
          stateValue.copyWith(
            isActive: false,
            error: SubscriptionFailure.receiptVerificationFailed,
          ),
        );
      }
      return false;
    }
  }

  @override
  Future<void> close() async {
    await _updates.cancel();
    await super.close();
  }
}
