# Kuymo integration

## Implemented

- Main display name: Kuymo, without an AI suffix.
- Dart package: `kuymo`; imports, app root, icon namespace, theme variant type,
  preset feedback component and localization APIs follow the new name.
- Brand wording updated in all 37 ARB catalogs and regenerated Flutter
  localizations. Android notification fallback wording and Android/iOS display
  names updated. Future saved output names start with `kuymo_`.
- Share copy uses the existing repository's releases URL and factual,
  localized on-device wording. Support copies the existing project's issues
  link; no unverified Kuymo domain or mailbox is introduced.
- Pigeon Dart/Kotlin/Swift bindings regenerated together for the new Dart
  package namespace; manual encoder and notification channels remain paired
  with the existing native implementations.

## Compatibility and deliberate exceptions

The Android application ID, Android Kotlin namespace, iOS bundle IDs, existing
notification channel IDs, temporary-job directory format, stored preferences
and app restoration bucket remain compatible with installed copies. Their
legacy identifiers are technical, not public brand labels. Existing saved
videos/history are not renamed or deleted.

The actual GitHub repository remains `MostafaSensei106/Asagi`; release checking,
source links and issue links keep that real destination. This work does not
rename remote repositories or claim a new domain.

## Approved visual identity

The owner selected B. The generator is now `tool/generate_kuymo_schemes.py`,
with the Matcha seed `#527A46`; its existing uncommitted source edits were
preserved. All 40 palettes were regenerated and audited. Fonts are documented
with bundled OFL licenses. New launcher, splash, SVG marks and Flutter branding
are detailed in [the final kit](../kuymo/README.md).
