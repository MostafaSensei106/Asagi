import 'dart:io';

/// Checks top-level MP4 boxes without loading video samples into memory.
final class Mp4FaststartValidator {
  const Mp4FaststartValidator();

  Future<bool> isStreamable(String path) async {
    final file = await File(path).open();
    try {
      final length = await file.length();
      var offset = 0;
      var sawFileType = false;
      var sawMovie = false;
      while (offset + 8 <= length) {
        await file.setPosition(offset);
        final header = await file.read(16);
        if (header.length < 8) return false;
        final size32 = _uint32(header, 0);
        final type = String.fromCharCodes(header.sublist(4, 8));
        final headerSize = size32 == 1 ? 16 : 8;
        if (header.length < headerSize) return false;
        final size = switch (size32) {
          0 => length - offset,
          1 => _uint64(header, 8),
          _ => size32,
        };
        if (size < headerSize || size > length - offset) return false;
        if (type == 'ftyp') sawFileType = true;
        if (type == 'moov') sawMovie = true;
        if (type == 'mdat') return sawFileType && sawMovie;
        offset += size;
      }
      return false;
    } finally {
      await file.close();
    }
  }

  int _uint32(List<int> bytes, int start) =>
      (bytes[start] << 24) |
      (bytes[start + 1] << 16) |
      (bytes[start + 2] << 8) |
      bytes[start + 3];

  int _uint64(List<int> bytes, int start) =>
      (_uint32(bytes, start) << 32) | _uint32(bytes, start + 4);
}
