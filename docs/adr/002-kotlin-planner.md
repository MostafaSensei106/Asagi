# ADR 002: Kotlin planning and platform codecs

Status: Accepted, 2026-11-24. Supersedes ADR 001.

## Decision

Move planning, presets, and verification to pure Kotlin policies exposed through
Pigeon. Remove the separate native planning toolchain and FFmpeg decoder staging.
Retain Media3 encoding and its installed system codec support. Compression is
Android-only; retain iOS encoder source for future implementation.

## Consequences

Builds and runtime initialization are simpler. Existing planning behavior is
preserved through Kotlin regression tests. Codec coverage depends on installed
Android decoders; unsupported sources produce localized errors. Other platforms
show an unsupported-compression state.

## Verification

Run Dart analysis/tests, Kotlin unit tests, and an Android debug build. Inspect
the APK to ensure obsolete planner and decoder libraries are absent. Verify
compression, controls, and unsupported-source behavior on an Android device.
