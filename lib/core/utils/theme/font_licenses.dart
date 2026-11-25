import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// Loads the bundled typeface notices only when the license registry is read.
void registerBrandFontLicenses() {
  LicenseRegistry.addLicense(() async* {
    for (final font in const {
      'Google Sans': 'assets/fonts/Google_Sans/OFL.txt',
      'Noto Sans Arabic': 'assets/fonts/Noto_Sans_Arabic/OFL.txt',
    }.entries) {
      yield LicenseEntryWithLineBreaks([
        font.key,
      ], await rootBundle.loadString(font.value));
    }
  });
}
