import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/compression/infrastructure/storage/mp4_faststart_validator.dart';

List<int> box(String type, {int size = 8}) => [
  (size >> 24) & 255,
  (size >> 16) & 255,
  (size >> 8) & 255,
  size & 255,
  ...type.codeUnits,
];

void main() {
  test('accepts moov before mdat and skips free boxes', () async {
    final directory = await Directory.systemTemp.createTemp('kuymo-mp4-test-');
    try {
      final file = File('${directory.path}/fast.mp4');
      await file.writeAsBytes([
        ...box('ftyp'),
        ...box('free'),
        ...box('moov'),
        ...box('mdat'),
      ]);
      expect(
        await const Mp4FaststartValidator().isStreamable(file.path),
        isTrue,
      );
    } finally {
      await directory.delete(recursive: true);
    }
  });

  test('rejects late moov and truncated box sizes', () async {
    final directory = await Directory.systemTemp.createTemp('kuymo-mp4-test-');
    try {
      final file = File('${directory.path}/late.mp4');
      await file.writeAsBytes([...box('ftyp'), ...box('mdat'), ...box('moov')]);
      expect(
        await const Mp4FaststartValidator().isStreamable(file.path),
        isFalse,
      );

      await file.writeAsBytes([...box('ftyp'), ...box('moov', size: 64)]);
      expect(
        await const Mp4FaststartValidator().isStreamable(file.path),
        isFalse,
      );

      await file.writeAsBytes([...box('ftyp'), ...box('moov')]);
      expect(
        await const Mp4FaststartValidator().isStreamable(file.path),
        isFalse,
      );
    } finally {
      await directory.delete(recursive: true);
    }
  });
}
