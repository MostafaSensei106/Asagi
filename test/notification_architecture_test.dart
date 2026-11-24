import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('notification domain owns entities and use cases, without JSON or transport implementations', () async {
    await for (final file in Directory(
      'lib/modules/notifications/domain',
    ).list(recursive: true)) {
      if (file is! File ||
          !file.path.endsWith('.dart') ||
          file.path.endsWith('.freezed.dart')) {
        continue;
      }
      final source = await file.readAsString();
      for (final marker in [
        'fromJson(',
        'toJson(',
        '@JsonSerializable',
        '@JsonKey',
        'package:dio/',
        'package:retrofit/',
        '../../data/',
      ]) {
        expect(source, isNot(contains(marker)), reason: file.path);
      }
    }
  });

  test('settings cubit owns preferences only and every command has the UseCase suffix', () async {
    final source = await File(
      'lib/modules/notifications/presentation/cubit/notifications_cubit.dart',
    ).readAsString();
    for (final marker in [
      'Hydrated',
      '/data/',
      'HapticsService',
      'NotificationRepository',
      'CheckAppUpdate',
      'checkInsights',
      'AppLocalizations',
    ]) {
      expect(source, isNot(contains(marker)), reason: marker);
    }
    for (final path in [
      'lib/core/preferences/domain/use_cases',
      'lib/modules/notifications/domain/use_cases',
      'lib/modules/updates/domain/use_cases',
      'lib/modules/compression/domain/use_cases',
    ]) {
      await for (final file in Directory(path).list()) {
        if (file is! File || !file.path.endsWith('.dart')) continue;
        final text = await file.readAsString();
        for (final match in RegExp(
          r'class (\w+)\s+implements UseCaseBase',
        ).allMatches(text)) {
          expect(match.group(1), endsWith('UseCase'), reason: file.path);
        }
      }
    }
  });
}
