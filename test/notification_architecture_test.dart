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
}
