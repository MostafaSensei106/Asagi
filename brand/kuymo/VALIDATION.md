# Kuymo B  validation, 2026-11-25

## Application checks

- `flutter analyze --no-pub`: no issues found.
- `flutter test --no-pub`: 91 tests passed (83 existing plus 8 brand cases).
- Brand capture run: 8 passed in English/Arabic, light/dark. Picker actions
  remain usable at 200% text scale on a 320 × 640 viewport. Assistant availability
  is explicit, with no simulated chat input. No test was skipped.
- `python3 -m unittest discover -s tool/tests`: 8 passed; all 40 generated
  schemes match the generator and pass its contrast audit. Auto now uses Tonal
  Spot; selectable alternatives and high-contrast modes remain available.
- Android arm64 debug APK built successfully. APK badging confirms the public
  label `Kuymo`, the adaptive launcher resource, and the new application ID
  `com.mostafa.sensei.kuymo`.
- `git diff --check`: passed.

Actual Flutter widget captures are in `presentation/screens/`. They use bundled
fonts and the production hero/assistant widgets inside a minimal localized app
shell, not a screenshot of a device session or the complete compression flow.
The package includes new native launcher/splash resources for Android and iOS;
iOS has not been compiled on this Linux machine. There was no device installation,
real encoding session, store submission, remote repository rename or publication.

## Logo checks

- Standard, small-size, reverse, horizontal and wordmark SVG audits report no
  issues (100/100 heuristic). They contain actual paths, not embedded rasters,
  live type, filters or traced bitmap logos. This is a structural heuristic,
  not an originality or trademark test.
- Two refinement rounds inspected: the original selected B drawing, then a
  simplified small-size tile, optically lighter reverse, custom 45° K and final
  spacing. The full concept comparison and library shelf references remain in
  `../rebrand/concepts/`.
- `tests/preview.html` and its PNG inspect size ladders, 16/32/48 px rasterization,
  one-color/reverse, light/dark backgrounds, blur, mirroring and rotation.
  Pine needs a light background; use the supplied white cut on Pine/Ink.
  The folded corner is intentionally omitted in the small-size cut.
- Approved artwork and six usage mockups are in the self-contained presentation.
  Mockups are illustrative placements, not a published website or merchandise.
- Android adaptive foreground uses a central safe-circle drawing with generator
  inset explicitly set to zero; Android 12 splash uses a separate inset drawing.
  Web maskable artwork is more inset than the ordinary store icon. Opaque store
  masters and exported 1024 px PNGs retain square corners for platform masking.

Google Sans and Noto Sans Arabic font files have bundled OFL notices. Notices
are included as app assets and registered for the in-app license registry. No
new runtime package dependency was introduced. Main product name: Kuymo;
Kuymo AI is the optional assistant signature. All native identifiers now use the Kuymo namespace. Source links target the
verified Kuymo repository. This is a new install identity without data migration.

## Native appearance follow-up

Added official iOS 18 dark/tinted launcher inputs and generated appearance
catalogs. Splash source sizes are now 768 px at 4x and 1152 px for Android 12.
Light/dark background colors match across Android versions. Pixel-level checks
verify both safe circles, including the corrected adaptive inset. Details and
platform limitations: [native setup](NATIVE_APPEARANCES.md).

## Complete namespace replacement

The Android namespace/application ID and all iOS build configurations now use
`com.mostafa.sensei.kuymo`. Main and test Kotlin packages were moved to the
matching directory tree. Manual native channels, notification identifiers,
plugin registration, restoration and compression job prefixes use Kuymo.
Pigeon Dart/Kotlin/Swift bindings were regenerated together.

Obsolete artwork was removed. A content/path/archive scan of project files
(excluding Git history, dependency caches and generated build directories)
found zero matches for the previous name, including within the brand ZIP.
The existing GitHub repository was verified as `MostafaSensei106/Kuymo`, and
release, support and source destinations use it.

Verification: analyzer clean; 91 Flutter tests, 10 Kotlin planner tests and
8 palette-generator tests passed. Android arm64 debug APK built with the new
application ID. iOS configuration was updated without a Linux-side Xcode build.
This is a new installation identity; prior app data is not migrated.

## Japanese palette and product website — 26 November 2026

- Kept the approved mark geometry and type. Updated paper/indigo/vermilion
  artwork, portable tokens, Android/iOS icons and light/dark splash resources.
- All 40 generated Material palettes pass pair/outline contrast and ordered
  surface audits. Nine generator tests and 14 Flutter theme/brand tests pass.
- Flutter analyzer passes; Android arm64 debug APK builds successfully.
- Native asset verifier passes (safe circles, iOS dark/tinted and splash selectors).
- Astro builds 229 static pages covering all 37 ARB locales, including regional
  variants. Existing legal links remain available.
- 43 product browser tests pass on both `/` and `/Kuymo`; they cover each locale and feature route, mobile overflow,
  images, theme persistence, slider interaction, reduced motion and WCAG AA
  checks in light/dark English, Arabic, Japanese and Traditional Chinese.
- Desktop, Arabic-mobile and Japanese-mobile captures are in `presentation/`.
  Artwork and small/reversed mark inspection sheets were refreshed.
- iOS assets were verified on Linux; Xcode/device validation was not performed.
  Website translations have not had native-speaker editorial review.
