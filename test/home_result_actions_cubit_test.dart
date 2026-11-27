import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/compression/domain/models/compression_output.dart';
import 'package:kuymo/core/services/share/base_share_service.dart';
import 'package:kuymo/modules/compression/domain/repositories/video_compression_repository.dart';
import 'package:kuymo/modules/home/presentation/cubit/home_result_actions_cubit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:share_plus/share_plus.dart';

class _Videos extends Mock implements VideoCompressionRepository {}

class _Share extends Mock implements BaseShareService {}

void main() {
  late _Videos videos;
  late _Share share;
  late HomeResultActionsCubit cubit;
  const output = CompressionOutput('/video.mp4', 12000, 1, null);
  setUpAll(() => registerFallbackValue(XFile('/fallback.mp4')));
  setUp(() {
    videos = _Videos();
    share = _Share();
    cubit = HomeResultActionsCubit(videos, share)..setOutput(output);
  });
  tearDown(() => cubit.close());

  test(
    'save is single flight and succeeds only after gallery export',
    () async {
      final gate = Completer<void>();
      when(() => videos.saveToGallery(output.path))
          .thenAnswer((_) => gate.future);
      final save = cubit.save();
      expect(cubit.stateValue, isA<HomeResultBusy>());
      expect(cubit.stateValue.saved, isFalse);
      await cubit.save();
      await cubit.share(null);
      verify(() => videos.saveToGallery(output.path)).called(1);
      verifyZeroInteractions(share);
      gate.complete();
      await save;
      expect(cubit.stateValue, const HomeResultActionsState.idle(saved: true));
      await cubit.save();
      verifyNoMoreInteractions(videos);
    },
  );

  test('failed gallery export remains retryable', () async {
    when(() => videos.saveToGallery(output.path)).thenThrow(StateError('disk'));
    await cubit.save();
    expect(
      cubit.stateValue,
      const HomeResultActionsState.failure(HomeResultAction.save, saved: false),
    );
    when(() => videos.saveToGallery(output.path)).thenAnswer((_) async {});
    await cubit.save();
    expect(cubit.stateValue.saved, isTrue);
  });

  test('a stale save cannot mark the next output as saved', () async {
    final gate = Completer<void>();
    when(() => videos.saveToGallery(output.path))
        .thenAnswer((_) => gate.future);
    final save = cubit.save();
    cubit.setOutput(const CompressionOutput('/next.mp4', 1000, 1, null));
    gate.complete();
    await save;
    expect(cubit.stateValue, const HomeResultActionsState.idle());
  });

  test('share opens once and never marks the video as saved', () async {
    final gate = Completer<void>();
    when(
      () => share.shareFile(
        file: any(named: 'file'),
        sharePosition: any(named: 'sharePosition'),
      ),
    ).thenAnswer((_) => gate.future);
    final task = cubit.share(null);
    await cubit.share(null);
    verify(() => share.shareFile(file: any(named: 'file'))).called(1);
    gate.complete();
    await task;
    expect(cubit.stateValue, const HomeResultActionsState.idle());
  });

  test('sharing failure preserves a successful gallery export', () async {
    when(() => videos.saveToGallery(output.path)).thenAnswer((_) async {});
    when(
      () => share.shareFile(
        file: any(named: 'file'),
        sharePosition: any(named: 'sharePosition'),
      ),
    ).thenThrow(StateError('share'));
    await cubit.save();
    await cubit.share(null);
    expect(
      cubit.stateValue,
      const HomeResultActionsState.failure(HomeResultAction.share, saved: true),
    );
  });

  test('closing during an operation ignores its completion', () async {
    final gate = Completer<void>();
    when(() => videos.saveToGallery(output.path))
        .thenAnswer((_) => gate.future);
    final task = cubit.save();
    await cubit.close();
    gate.complete();
    await expectLater(task, completes);
  });
}
