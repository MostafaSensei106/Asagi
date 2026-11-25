import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/compression/infrastructure/storage/mp4_faststart_optimizer.dart';
import 'package:kuymo/core/compression/infrastructure/storage/mp4_faststart_validator.dart';

Uint8List box(String type, List<int> payload) {
  final data = Uint8List(8 + payload.length);
  ByteData.sublistView(data).setUint32(0, data.length);
  data.setRange(4, 8, type.codeUnits);
  data.setRange(8, data.length, payload);
  return data;
}

void main() {
  test(
    'moves movie box and updates chunk offsets while preserving media bytes',
    () async {
      final directory = await Directory.systemTemp.createTemp(
        'kuymo-faststart-test',
      );
      addTearDown(() => directory.delete(recursive: true));
      final ftyp = box('ftyp', [0, 0, 0, 0]);
      final media = box('mdat', [1, 2, 3, 4, 5]);
      final table = Uint8List(12);
      ByteData.sublistView(table)
        ..setUint32(4, 1)
        ..setUint32(8, ftyp.length + 8);
      final movie = box(
        'moov',
        box('trak', box('mdia', box('minf', box('stbl', box('stco', table))))),
      );
      final file = File('${directory.path}/output.mp4');
      await file.writeAsBytes([...ftyp, ...media, ...movie]);
      expect(
        await const Mp4FaststartValidator().isStreamable(file.path),
        isFalse,
      );
      await const Mp4FaststartOptimizer().optimize(file.path);
      expect(
        await const Mp4FaststartValidator().isStreamable(file.path),
        isTrue,
      );
      final bytes = await file.readAsBytes();
      expect(bytes.sublist(ftyp.length + movie.length + 8), [1, 2, 3, 4, 5]);
      final chunk = ByteData.sublistView(bytes)
          .getUint32(ftyp.length + movie.length - 4);
      expect(chunk, ftyp.length + movie.length + 8);
      final first = List<int>.of(bytes);
      await const Mp4FaststartOptimizer().optimize(file.path);
      expect(await file.readAsBytes(), first);
    },
  );
}
