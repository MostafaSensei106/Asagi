import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/app_release.dart';

part 'releases_state.freezed.dart';

@freezed
sealed class ReleasesState with _$ReleasesState {
  const factory ReleasesState.loading({AppRelease? release}) = ReleasesLoading;
  const factory ReleasesState.ready({
    AppRelease? release,
    @Default(false) bool updateAvailable,
  }) = ReleasesReady;
  const factory ReleasesState.failure({AppRelease? release}) = ReleasesFailure;
}
