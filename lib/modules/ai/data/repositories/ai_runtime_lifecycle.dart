import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/ai_runtime_repository.dart';

@lazySingleton
final class AiRuntimeLifecycle with WidgetsBindingObserver {
  AiRuntimeLifecycle(this._runtime);
  final AiRuntimeRepository _runtime;
  bool _started = false;
  void start() {
    if (_started) return;
    _started = true;
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didHaveMemoryPressure() => _runtime.releaseWhenIdle();
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.detached) {
      _runtime.releaseWhenIdle();
    }
  }

  @disposeMethod
  void dispose() {
    if (_started) WidgetsBinding.instance.removeObserver(this);
    _started = false;
  }
}
