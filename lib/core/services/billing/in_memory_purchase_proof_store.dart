import 'package:injectable/injectable.dart';

import 'billing_service.dart';

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
