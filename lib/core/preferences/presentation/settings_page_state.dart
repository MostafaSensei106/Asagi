import 'dart:async';

import 'package:material_ui/material_ui.dart';

import '../domain/repositories/settings_repository.dart';
import 'settings_view.dart';

/// Reuses the page's rendering while all durable state remains in its cubit.
abstract class SettingsPageState<W extends StatefulWidget, T> extends State<W> {
  SettingsRepository<T> get repository;
  T? _value;
  Future<void> Function(T Function(T))? _update;
  T get settings => _value ?? repository.current;
  void updateSettings(T Function(T) change) {
    final update = _update;
    if (update != null) unawaited(update(change));
  }

  Widget buildSettings(BuildContext context);
  @override
  Widget build(BuildContext context) => SettingsView<T>(
    repository: repository,
    builder: (context, value, update) {
      _value = value;
      _update = update;
      return buildSettings(context);
    },
  );
}
