import 'dart:io';
import 'dart:typed_data';

import 'mp4_faststart_validator.dart';

/// Moves the MP4 movie box before media data and adjusts encoded chunk offsets.
/// Media samples are streamed; only the bounded movie box is held in memory.
final class Mp4FaststartOptimizer {
  const Mp4FaststartOptimizer();
  Future<void> optimize(String path) async {
    if (await const Mp4FaststartValidator().isStreamable(path)) return;
    final input = File(path);
    final reader = await input.open();
    final temporary = File('$path.faststart');
    try {
      final length = await reader.length();
      var offset = 0;
      var insert = -1;
      var movieOffset = -1;
      var movieSize = 0;
      while (offset + 8 <= length) {
        await reader.setPosition(offset);
        final header = await reader.read(16);
        final data = ByteData.sublistView(header);
        final size32 = data.getUint32(0);
        final size = size32 == 1
            ? data.getUint64(8)
            : size32 == 0
            ? length - offset
            : size32;
        if (size < (size32 == 1 ? 16 : 8) || offset + size > length) {
          throw const FormatException('E_MP4_BOX');
        }
        final type = String.fromCharCodes(header.sublist(4, 8));
        if (type == 'ftyp') insert = offset + size;
        if (type == 'moov') {
          movieOffset = offset;
          movieSize = size;
        }
        offset += size;
      }
      if (insert < 0 || movieOffset < insert || movieSize > 32 * 1024 * 1024) {
        throw const FormatException('E_MP4_LAYOUT');
      }
      await reader.setPosition(movieOffset);
      final movie = await reader.read(movieSize);
      if (movie.length != movieSize) {
        throw const FormatException('E_MP4_TRUNCATED');
      }
      _adjust(movie, 0, movie.length, movieOffset, movieSize, insert);
      final sink = temporary.openWrite();
      try {
        await sink.addStream(input.openRead(0, insert));
        sink.add(movie);
        await sink.addStream(input.openRead(insert, movieOffset));
        await sink.addStream(input.openRead(movieOffset + movieSize));
        await sink.flush();
      } finally {
        await sink.close();
      }
      if (!await const Mp4FaststartValidator().isStreamable(temporary.path)) {
        throw const FormatException('E_MP4_FASTSTART');
      }
      await reader.close();
      await temporary.rename(path);
    } finally {
      try {
        await reader.close();
      } on FileSystemException {
        /* Already closed before atomic replacement. */
      }
      if (await temporary.exists()) await temporary.delete();
    }
  }

  void _adjust(
    Uint8List bytes,
    int start,
    int end,
    int oldMovie,
    int movieSize,
    int insertion,
  ) {
    final data = ByteData.sublistView(bytes);
    var offset = start;
    while (offset + 8 <= end) {
      final size32 = data.getUint32(offset);
      final header = size32 == 1 ? 16 : 8;
      if (offset + header > end) throw const FormatException('E_MP4_BOX');
      final size = size32 == 1
          ? data.getUint64(offset + 8)
          : size32 == 0
          ? end - offset
          : size32;
      if (size < header || offset + size > end) {
        throw const FormatException('E_MP4_BOX');
      }
      final type = String.fromCharCodes(bytes.sublist(offset + 4, offset + 8));
      if (const {'moov', 'trak', 'mdia', 'minf', 'stbl'}.contains(type)) {
        _adjust(
          bytes,
          offset + header,
          offset + size,
          oldMovie,
          movieSize,
          insertion,
        );
      } else if (type == 'stco' || type == 'co64') {
        if (size < header + 8) throw const FormatException('E_MP4_CHUNKS');
        final count = data.getUint32(offset + header + 4);
        final stride = type == 'stco' ? 4 : 8;
        if (header + 8 + count * stride > size) {
          throw const FormatException('E_MP4_CHUNKS');
        }
        for (var i = 0; i < count; i++) {
          final position = offset + header + 8 + i * stride;
          final value = stride == 4
              ? data.getUint32(position)
              : data.getUint64(position);
          final adjusted = value >= insertion && value < oldMovie
              ? value + movieSize
              : value;
          if (stride == 4) {
            if (adjusted > 0xffffffff) {
              throw const FormatException('E_MP4_OFFSET_OVERFLOW');
            }
            data.setUint32(position, adjusted);
          } else {
            data.setUint64(position, adjusted);
          }
        }
      }
      offset += size;
    }
  }
}
