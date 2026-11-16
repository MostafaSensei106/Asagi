import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_source_license_info.freezed.dart';

@freezed
sealed class OpenSourceLicenseInfo with _$OpenSourceLicenseInfo {
  const factory OpenSourceLicenseInfo({
    required String? license,
    required String? version,
    required String? linkage,
    required String? sourceUrl,
    required List<String> builtAbis,
    required String licenseText,
  }) = _OpenSourceLicenseInfo;
}
