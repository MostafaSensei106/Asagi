# Android permissions and dependency audit

Kuymo supports Android 30 and later. Review the **merged** manifest after
changing plugins: a plugin can add permissions that are absent from the app's
source manifest.

| Effective permission | Actual consumer |
| --- | --- |
| `INTERNET` | GitHub release checks, model downloads, and consent-controlled Firebase telemetry |
| `ACCESS_NETWORK_STATE` | Media3 and the model downloader's connectivity handling |
| `FOREGROUND_SERVICE` | Native `MediaProcessingService` and the model downloader |
| `FOREGROUND_SERVICE_DATA_SYNC` | Compression service on Android 30–34; background model downloads |
| `FOREGROUND_SERVICE_MEDIA_PROCESSING` | Compression service on Android 35+ |
| `POST_NOTIFICATIONS` | User-enabled notifications and compression progress |
| `VIBRATE` | Notification channels with vibration enabled |
| `WAKE_LOCK` | Media3 and WorkManager, brought in by the model downloader |
| `RECEIVE_BOOT_COMPLETED` | WorkManager rescheduling for model downloads |
| `${applicationId}.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION` | AndroidX Core's protection for internal dynamic receivers |

The app suppresses `READ_EXTERNAL_STORAGE`, `READ_MEDIA_IMAGES`,
`READ_MEDIA_VIDEO`, and `READ_MEDIA_AUDIO` from `open_filex`. History opens
outputs in the app's documents directory, which `open_filex` exposes through
its FileProvider with temporary URI read access. Gallery selection uses the
system picker, and gallery export uses `gal` with MediaStore. These flows do
not need broad media-library access. Reassess this if opening arbitrary shared
storage paths is introduced.

## Verification

From the repository root:

```sh
flutter analyze --no-pub
flutter test --no-pub
python3 -m unittest discover -s tool/tests -p test_verify_android_permissions.py
```

From `android/`, run `./gradlew :app:testDebugUnitTest :app:processReleaseMainManifest`
(the existing release signing configuration must be present). Then, from the
repository root:

```sh
python3 tool/verify_android_permissions.py build/app/intermediates/merged_manifest/release/processReleaseMainManifest/AndroidManifest.xml
```

The verifier rejects unreviewed permissions, missing required permissions, and
unmerged removal directives. It also accepts a debug merged manifest. Always
generate the manifest with the current dependency graph before verifying it.

On devices, verify video selection, compression in the background, opening
history outputs, gallery export, sharing, notification denial/grant, and model
downloads. Cover Android 30–34 and 35+ for both foreground service types.

## Removed dependencies

Removed direct runtime dependencies: `smooth_page_indicator`, `wakelock_plus`,
`money2`, `formz`, `pinput`, and `cached_network_image_ce`. Their unused shared
components and exports were removed too. The unused network cubit was removed,
so `connectivity_plus` is now only a transitive dependency of the model
downloader.

Removed development dependencies: `intl_utils`, `bloc_test`, `dartproptest`,
and `kaisel_lint`. Localization uses Flutter's `gen-l10n`; the configured
generators, Flutter lints, icon generator, and splash generator remain in use.
The unused direct Android dependency on `lifecycle-runtime-ktx` was also removed.

Dependencies used through domain implementations, generated bindings,
dependency injection, tests, or configured build tools remain necessary even
when feature modules do not import them directly. Keep transitive dependencies
required by retained packages.

## Validation results for this cleanup

- Flutter analysis: passed.
- Kotlin planner tests: 10 passed.
- Fresh release merged manifest: all 10 effective permissions passed review;
  none of the four broad media permissions remain.
- Manifest verifier unit tests: 5 passed.
- Permission repository unit tests: 4 passed in a temporary minimal Flutter
  package using symlinks to the current repository source and the same locked
  dependency versions. This isolated run does not validate the full app.
- Full Flutter tests and Android APK build: blocked before test execution or
  packaging by duplicate native libraries from `flutter_edge_ai_litertlm`
  1.20.2 and `litertlm_dart` 0.20.0+2 (`libLiteRtLm.so`, `libStreamProxy.so`,
  and additional host GPU libraries). Both dependencies are used by the AI
  feature, and both versions are unchanged by this cleanup. Resolving this
  requires consolidating their native runtimes; deleting either package would
  remove active functionality.
- Device checks: unavailable because no Android device or emulator is connected.
