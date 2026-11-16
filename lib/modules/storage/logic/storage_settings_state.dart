part of 'storage_settings_cubit.dart';

enum StorageSettingsFailure { loadFailed, cleanupFailed }

@freezed
sealed class StorageSettingsState with _$StorageSettingsState {
  const factory StorageSettingsState({
    @Default(<String>[]) List<String> jobIds,
    @Default(false) bool isLoading,
    @Default(false) bool isCleaning,
    StorageSettingsFailure? error,
  }) = _StorageSettingsState;
}
