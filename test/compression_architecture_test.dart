import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'domain and application depend only on core contracts and Dart SDK',
    () async {
      for (final root in [
        'lib/compression/domain',
        'lib/compression/application',
      ]) {
        await for (final file in Directory(root).list(recursive: true)) {
          if (file is! File || !file.path.endsWith('.dart')) continue;
          final source = await file.readAsString();
          for (final dependency in RegExp(
            r'''(?:import|export)\s+['"]([^'"]+)['"]''',
          ).allMatches(source)) {
            final uri = dependency.group(1)!;
            expect(uri, isNot(contains('infrastructure')), reason: file.path);
            expect(uri, isNot(contains('core/native')), reason: file.path);
            expect(uri, isNot(startsWith('package:')), reason: file.path);
            expect(uri, isNot(equals('dart:io')), reason: file.path);
          }
        }
      }
    },
  );
}
