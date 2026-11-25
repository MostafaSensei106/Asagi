# Native icon and splash appearances

Configured against the installed official releases: flutter_launcher_icons
0.14.4 and flutter_native_splash 2.4.8. No dependency upgrade or runtime plugin
was needed.

| Surface | Appearance selection | Supplied artwork |
| --- | --- | --- |
| Android launcher | Ordinary icon; Android 13+ themed icon when enabled in a compatible launcher | Opaque square, adaptive layers and monochrome layer |
| iOS launcher | User's Home Screen appearance; dark/tinted on iOS 18+ | Opaque default, transparent dark, grayscale tinted |
| Android native splash | Device light/dark setting, including separate Android 12+ resources | Indigo on warm paper / white on indigo |
| iOS native splash | Device light/dark setting | Light/dark images and background asset appearances |

The native splash precedes Flutter and cannot read the app's saved theme setting
through this package. The existing Flutter theme selector remains independent;
System mode follows the device. Home Screen icon appearance is also chosen by
the OS/launcher, not by Flutter's theme selector. On Android, ordinary colored
icons do not automatically become themed icons merely because dark mode is on.
The launcher must support themed icons and the user must enable them.

[Preview the exported artwork](presentation/native-appearance-preview.png).
This is an asset preview, not a device screenshot.

## Asset sizing and generation

Ordinary splash source: 768 × 768 PNG at 4x density (192 logical-pixel canvas).
Android 12+ uses a transparent 1152 × 1152 canvas without an icon background;
visible pixels stay inside the central 768-pixel circle. The same light/dark
background colors are used before and after Android 12.

Android adaptive artwork uses a 432-pixel canvas with all visible pixels inside
the central 264-pixel safe circle. Generator foreground inset is zero because
padding is already included in the artwork. iOS icons are 1024-pixel unmasked
squares; only the default icon is stripped of alpha. The dark cut preserves
transparency for the system background, and the tinted cut is already grayscale.

```sh
python3 brand/kuymo/process/build_identity.py
python3 brand/kuymo/process/render_assets.py
python3 tool/refresh_brand_delivery.py
dart run flutter_launcher_icons
dart run flutter_native_splash:create
python3 tool/verify_native_branding.py
flutter build apk --debug --no-pub --target-platform android-arm64
```

The Python render/verification tools require fontTools, rsvg-convert and Pillow.
The verifier checks generated native appearance catalogs, Android light/night
resource references, image dimensions, alpha, grayscale and safe-circle clipping.
The splash disappears automatically with Flutter's first frame. Critical service
initialization already finishes before `runApp`; preserve/remove calls are not
needed for this startup flow.

## Sources

- [Official launcher package attributes](https://pub.dev/packages/flutter_launcher_icons#-attributes)
- [Official splash configuration and app-theme limitation](https://pub.dev/packages/flutter_native_splash)
- [Android adaptive and themed icon behavior](https://developer.android.com/develop/ui/compose/system/icon_design_adaptive)
- [Apple icon appearances and unmasked artwork](https://developer.apple.com/design/human-interface-guidelines/app-icons)

## Verification

Native resource and pixel checks passed after regeneration. Android arm64 debug
APK built successfully. iOS assets were generated and inspected on Linux; Xcode
compilation and on-device light/dark transitions have not been performed. No
physical device settings were changed and no app was installed by this task.
