> Historical name-migration/concept checks. The owner subsequently chose B.
> Current identity verification: [final validation](../kuymo/VALIDATION.md).

# Kuymo  validation, 2026-11-25

## Application

- `flutter analyze --no-pub`: **No issues found**.
- `flutter test --no-pub`: **83 tests passed**, including all selectable
  locale brand names, native planner channel mapping, compression/recovery,
  notifications, AI placeholder pages and all current theme variants.
- `flutter build apk --debug --no-pub --target-platform android-arm64`:
  **succeeded** after the final Japanese localization fix.
- APK badging inspection reports `application-label: 'Kuymo'`; new
  application ID is `com.mostafa.sensei.kuymo` for the new install identity.
- `git diff --check`: passed.

The test run found old Zumi wording in Japanese onboarding, which was replaced
with Kuymo. Two notification widget tests awaited a service Future chain
created outside their fake-clock zone. They now initialize through
`tester.runAsync` and unmount widgets before closing their cubits. Their
assertions remain active; no tests are skipped in the successful full run.

Pigeon bindings were regenerated together and Dart-formatted. DI and the theme
state were regenerated with build_runner. No dependencies were added. iOS
display metadata and generated Swift bindings were updated but not built on
this Linux host. No device encoding session or installation was performed.

## Logo concepts

Both saved iterations were rendered and visually inspected. Pass 2 improves
the K's centering and returning arm, introduces the tile's folded corner and
opens the companion's eyes while rounding its ears.

- Symbol SVGs: one black fill; no live text, embedded raster or filters.
- Second-pass symbol audit: no issues, 100/100 heuristic for each symbol.
- Outlined type-study lockups: 99/100; a precision information note remains
  because of the font scaling transform. They are exploratory, not masters.
- Size, one-color/reversal, mirror, rotation, blur, avatar/app-icon context and
  library shelf-test sheets generated. Chromium screenshots inspected for
  each direction. The provided library marks are references, not a legal
  originality check or an exhaustive competitor set.

At 16 px the silhouette is the recognition cue; the folded tile detail and
mascot expression are less legible. Choose the direction before preparing its
final optical cut, reversed drawing, palette and production exports.

Current recommendation: **A  Fold K**. The final concept overview is
`concepts/round-2.png`; `round-1.png` is the earlier comparison.

These results do not approve a logo, establish trademark rights, verify font
licensing, or claim a completed screen redesign. Those production stages
follow the owner's concept selection.
