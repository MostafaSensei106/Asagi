# Localization files

- `app_<language>.arb` is the complete fallback catalog required by Flutter's
  `gen-l10n` when region-specific files exist. These fallback locales are not
  shown in the language picker.
- `app_<language>_<COUNTRY>.arb` is a selectable locale. Its `countryCode` is
  the ISO 3166-1 alpha-2 flag code. `languageName` is written in that language.
- The picker translates country names through the `countryName` message of the
  currently displayed language. Add new country codes to that message in every
  base language ARB.
- Arabic region files override local expressions. Messages without an override
  fall back to Modern Standard Arabic in `app_ar.arb`.
- `key_migration.json` maps the former `Title` and `Description` message keys
  to the descriptive keys used by the generated Dart API.

After editing ARBs, run `flutter gen-l10n` and commit the generated Dart files.
