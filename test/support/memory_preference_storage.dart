import 'package:asagi/core/services/shared_prefs/base_pref_storage_service.dart';

final class MemoryPreferenceStorage implements BasePrefStorageService {
  final values = <String, Object>{};
  bool writable = true;
  @override
  Future<T?> getData<T>({required String key}) async => values[key] as T?;
  @override
  Future<bool> setData<T>({required String key, required T value}) async {
    if (!writable) return false;
    values[key] = value as Object;
    return true;
  }

  @override
  Future<bool> removeData({required String key}) async {
    values.remove(key);
    return true;
  }

  @override
  Future<bool> clearAll() async {
    values.clear();
    return true;
  }
}
