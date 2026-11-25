# Kuymo B — validation, 2026-11-25

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
  label `Kuymo`, the adaptive launcher resource, and the existing application ID
  `com.mostafa.sensei.asagi`.
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
Kuymo AI is the optional assistant signature. Historical native IDs and source
links are deliberately retained for compatibility and accurate destinations.

## Native appearance follow-up

Added official iOS 18 dark/tinted launcher inputs and generated appearance
catalogs. Splash source sizes are now 768 px at 4x and 1152 px for Android 12.
Light/dark background colors match across Android versions. Pixel-level checks
verify both safe circles, including the corrected adaptive inset. Details and
platform limitations: [native setup](NATIVE_APPEARANCES.md).
