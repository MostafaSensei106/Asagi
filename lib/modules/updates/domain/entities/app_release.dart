import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_release.freezed.dart';

@freezed
sealed class AppRelease with _$AppRelease {
  const factory AppRelease({
    required int id,
    required String version,
    required String title,
    required String notes,
    required Uri url,
    required DateTime publishedAt,
  }) = _AppRelease;
}
