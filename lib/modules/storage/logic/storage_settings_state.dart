part of 'storage_settings_cubit.dart';

@freezed
sealed class StorageSettingsState with _$StorageSettingsState {
  const factory StorageSettingsState({
    @Default(<String>[]) List<String> jobIds,
    @Default(false) bool isLoading,
    @Default(false) bool isCleaning,
    @Default(false) bool error,
  }) = _StorageSettingsState;
}
