import 'dart:async';
import 'dart:convert';

import '../../../services/shared_prefs/base_pref_storage_service.dart';
import '../../domain/repositories/settings_repository.dart';

/// Serializes writes and publishes only durable values. No widget owns this cache.
class LocalSettingsRepository<T> implements SettingsRepository<T> {
  LocalSettingsRepository({
    required this.storage,
    required this.key,
    required this.defaults,
    required this.decode,
    required this.encode,
    this.validate,
    this.migrate,
    this.version = 1,
  }) : _current = defaults;

  final BasePrefStorageService storage;
  final String key;
  final T defaults;
  final T Function(Map<String, dynamic>) decode;
  final Map<String, dynamic> Function(T) encode;
  final void Function(T)? validate;
  final Future<T?> Function()? migrate;
  final int version;
  final _changes = StreamController<T>.broadcast(sync: true);
  T _current;
  bool _recovered = false;
  bool _disposed = false;
  Future<T>? _loading;
  late Future<void> _writes = Future<void>.value();

  @override
  T get current => _current;
  @override
  bool get recovered => _recovered;
  @override
  Stream<T> get changes => _changes.stream;

  @override
  Future<T> load() async {
    if (_disposed) throw StateError('E_SETTINGS_DISPOSED');
    try {
      await (_loading ??= _read());
      return _current;
    } on Object {
      _loading = null;
      rethrow;
    }
  }

  Future<T> _read() async {
    // Reading Object preserves malformed JSON and distinguishes it from absence.
    final raw = await storage.getData<Object>(key: key);
    var next = defaults;
    if (raw == null) {
      T? legacy;
      try {
        legacy = await migrate?.call();
        if (legacy != null) validate?.call(legacy);
      } on FormatException {
        _recovered = true;
      } on TypeError {
        _recovered = true;
      } on ArgumentError {
        _recovered = true;
      }
      if (legacy != null) {
        await _persist(legacy);
        next = legacy;
      }
    } else {
      try {
        final json =
            (raw is String ? jsonDecode(raw) : raw) as Map<String, dynamic>;
        final savedVersion = json['version'];
        if (savedVersion is int && savedVersion > version) {
          throw UnsupportedSettingsVersion(savedVersion);
        }
        if (savedVersion != version || json['value'] is! Map<String, dynamic>) {
          throw const FormatException('E_SETTINGS_FORMAT');
        }
        next = decode(json['value'] as Map<String, dynamic>);
        validate?.call(next);
      } on UnsupportedSettingsVersion {
        rethrow;
      } on Object {
        // Leave the damaged record intact until an explicit update or reset.
        _recovered = true;
        next = defaults;
      }
    }
    _current = next;
    if (!_disposed) _changes.add(next);
    return next;
  }

  Future<void> _persist(T value) async {
    final saved = await storage.setData(
      key: key,
      value: jsonEncode({'version': version, 'value': encode(value)}),
    );
    if (!saved) throw StateError('E_SETTINGS_WRITE');
  }

  @override
  Future<T> update(T Function(T current) change) {
    final task = _writes.then((_) async {
      await load();
      final next = change(_current);
      validate?.call(next);
      if (next == _current && !_recovered) return _current;
      await _persist(next);
      _current = next;
      _recovered = false;
      if (!_disposed) _changes.add(next);
      return next;
    });
    _writes = task.then<void>((_) {}, onError: (Object _, StackTrace _) {});
    return task;
  }

  @override
  Future<T> reset() => update((_) => defaults);

  @override
  Future<void> dispose() async {
    await _writes;
    _disposed = true;
    await _changes.close();
  }
}
