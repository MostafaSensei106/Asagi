# ADR 001 — Android-first v1.0 with an LGPL FFmpeg decode path

- **Status:** Accepted
- **Date:** 2026-11-16
- **Deciders:** Project maintainer, engineering
- **Scope:** Platform support for v1.0, third-party media licensing, software decode fallback

## Context

Zumi compresses video on device. Today every byte of media work happens in two places:

- **Rust** (`rust/src/`) decides the plan: target resolution, bitrate, frame cadence, and post-encode verification.
- **Platform encoders** (`android/.../MetadataExtractor.kt`, `lib/core/compression/infrastructure/native/platform_video_encoder.dart`) do the actual decode, scale, and encode through MediaCodec and Media3.

That combination is fast and royalty-clean, but it has a hard edge: when a device cannot decode a source, the job fails with `E_VIDEO_DECODER_UNSUPPORTED` and the user gets nothing. The known failure surface is real — 10-bit HEVC, unusual profiles, and spatially-audio or E-AC-3 sources appear in the device matrix (`docs/device_validation_matrix.md`) as cases that either decode or fail explicitly.

We want a fallback that can actually turn those files into something playable. We also need to settle two questions before writing build scripts and shipping binaries:

1. Which platform ships first?
2. Under which license can we bundle a general-purpose demuxer/decoder?

Both answers shape the build system, the CI gates, the release checklist, and the legal notices page. Getting them wrong is expensive to reverse after a store submission.

### Constraints that bound the decision

- **Rust stays stateless.** Files and directories are owned by Dart. No `RustOpaque`-held job struct with `Drop`-based cleanup; that design leaks across the FFI boundary and has already been ruled out.
- **`minSdk` is 30** (`android/app/build.gradle.kts` uses `maxOf(30, flutter.minSdkVersion)`). Any native piece must support 64-bit ARM and emulator targets.
- **The size guarantee is contractual.** A successful result must satisfy `actual_bytes <= target_mb * 1,000,000`. Verification lives in `rust/src/domain/verification.rs` and is not optional.
- **Panic-free encoder path.** `panic = "abort"` is set for release. A native library that aborts on a corrupt packet takes the app down with it.

## Decision

### 1. Android and Google Play are the v1.0 target

v1.0 ships on Android only. iOS is deferred to v1.1, including the FFmpeg build for it.

Rationale, in order of weight:

- The FFmpeg cross-build for iOS requires a separate toolchain (`xcrun`, per-architecture `--enable-cross-compile`, and a static-library story that interacts badly with App Store bitcode rules). Each hour spent there is an hour not spent on the decode path that users actually hit.
- Google Play review has no equivalent of the App Store's binary-level license scanning friction for LGPL media libraries.
- We cannot execute an iOS build on the current development machine, so any iOS change is unverifiable until a Mac is available. Shipping unverified native integration is not acceptable.

The Rust core is already platform-neutral, so the deferred work is build tooling and packaging, not design.

### 2. FFmpeg is pinned to LGPL v2.1, not v3

The build must pass **at minimum**:

```
--disable-gpl --disable-version3 --disable-nonfree --enable-shared
```

`--disable-gpl` removes code under the GPL. `--disable-version3` removes code offered only under GPLv3. `--disable-nonfree` removes code with non-redistributable terms. `--enable-shared` is a compliance requirement, not a size preference — see section 4.

**Why not LGPL v3.** v3 adds the "Installation Information" requirement (section 6 of GPLv3, incorporated by reference). For a consumer product, that means being able to hand the user the keys and information needed to install a modified library on their own locked-down device. Android's signed, verified-boot, non-rooted deployment model makes that requirement effectively unsatisfiable without weakening the device. v2.1's relinking requirement can be met by dynamic linking alone.

**Library allow-list.** Only these external libraries may be enabled, all permissive or LGPL-compatible: `libvpx` (BSD), `libdav1d` (BSD), `libopus` (BSD), `libaom` (BSD), `libwebp` (BSD), `zlib`. Explicitly **forbidden**: `libx264`, `libx265`, `libxavs`, `libxvid`, `libvidstab`, `libfdk-aac`, `libaribb24` — GPL, nonfree, or both. `libmp3lame` is LGPL and acceptable, but unnecessary for v1.

### 3. FFmpeg decodes and filters; MediaCodec keeps encoding

This is the single most important scoping decision in this ADR.

FFmpeg is introduced as a **decoder and filter graph only**. Encoding continues to go through the platform hardware encoder. Concretely:

- A source that MediaCodec can open keeps the current fast path. FFmpeg never loads.
- A source that fails with `E_VIDEO_DECODER_UNSUPPORTED` (or fails mid-stream with `E_ENCODING` on a decode-side cause) is decoded by FFmpeg into a normalised frame stream, and those frames are fed to the existing encoder.
- The Rust planner is unchanged. Target dimensions, `display_short_edge`, SAR handling, and the size guarantee all stay where they are.

**Why not let FFmpeg encode too.** There is no viable LGPL H.264 encoder:

- FFmpeg's native `h264` encoder is `libx264`, which is GPL. Using it means the whole binary is GPL, which is incompatible with a closed-source store app.
- `libopenh264` is BSD-licensed source, but Cisco's royalty arrangement only covers **the binary module Cisco itself packages and distributes**. Reading the FAQ directly (https://www.openh264.org/faq.html, checked 2026-11-16): Cisco is the party responsible for MPEG LA royalties *only* when Cisco provides "the packaging and distribution of this code in a binary module format", plus "several other constraints." Two consequences follow, and both are disqualifying:
  1. Compiling OpenH264 from source into our own library drops us out of that arrangement. **We** would then be the party owing H.264 royalties.
  2. Downloading Cisco's prebuilt `.so` and shipping it inside our APK does not match "Cisco provides the packaging and distribution" either, and the constraints are not ones we can satisfy from inside an app bundle.
- `mp4v` (MPEG-4 Part 2) and VP9/WebM are royalty-free but are not what users want to share to WhatsApp, Instagram, or X. They are fallbacks of last resort, and were rejected as the primary software path.

So hardware encoding stays mandatory for H.264 output, and FFmpeg's job is narrow: **open the file, decode it, and hand over clean frames.**

### 4. Shared libraries plus a visible license surface

LGPLv2.1 section 6 requires that a user be able to modify the library and relink the application against it. The practical implementation on Android:

- Build FFmpeg with `--enable-shared`, producing `libavcodec.so`, `libavformat.so`, `libavutil.so`, `libswscale.so`, `libswresample.so` (and any enabled codec libs). These ship unmodified in `jniLibs` per ABI (`arm64-v8a`, `x86_64`).
- Because the libraries are dynamically linked and replaceable, no object files or relinking offer are needed for compliance. **Static linking would trigger that obligation**, which is why `--enable-shared` is non-negotiable even though it costs a few megabytes.
- Ship the full LGPL v2.1 text and the FFmpeg source URL/pinned version in the app's licenses screen, alongside the existing Rust dependency notices.
- Keep `strip = "symbols"` in `rust/Cargo.toml` for **our** code. Stripping our own symbols is unrelated to LGPL compliance (the obligation is about the library, not our application), and it is the existing asset-protection choice. Do not strip the FFmpeg `.so` files in a way that removes license or version strings — that is the only reading of "modified" we need to avoid.

### 5. GPL is blocked mechanically, not by intention

A CI job runs `cargo-deny` with a license allow-list, and the FFmpeg configure step fails the build if `--disable-gpl`/`--disable-version3`/`--disable-nonfree` are missing. A reviewer reminder is not a control. The gate is:

- `deny.toml` allows only the permissive and LGPL-compatible license set in use.
- The FFmpeg build script asserts the configuration flags rather than trusting the caller.
- The gate runs on pull requests, so a dependency bump cannot silently pull GPL code in.

## Consequences

### Positive

- The most common real-world failure ("this file won't open") gets a real answer instead of an error toast.
- The encoder path is untouched, so the verified size guarantee, SAR handling, frame dropping, and the 32 Dart tests that cover them keep their meaning.
- Legal exposure is bounded to a well-known, widely-used library under a license that mobile app stores have accepted for decades.
- No GPL code means we can keep the app closed-source and use the standard Play distribution path.

### Negative

- **APK size grows** by several megabytes for the shared FFmpeg libraries. This is a real cost on low-end devices and in emerging markets.
- **Two decode paths to maintain.** A bug may reproduce on one and not the other, which makes the matrix longer, not shorter.
- **Build complexity.** A reproducible NDK cross-build must be scripted and cached, or every CI run pays for it.
- **Not a complete fix.** Files whose audio codec is unsupported still fail; FFmpeg gives us a decoder for common audio too, but the guarantee is decode-side only — encoding is still whatever the device's hardware supports.
- **iOS is unfinished work**, explicitly carried into v1.1.

### Risks

- **Hardware encoder absence.** A device with no H.264 encoder at all, or one that rejects the planned resolution, still cannot produce H.264. The current `E_ENCODER_UNSUPPORTED` path remains the honest answer. Do not paper over it.
- **ABI coverage gaps.** Shipping `arm64-v8a` and `x86_64` only means 32-bit devices are unsupported. Given `minSdk` 30 and current device distribution, this is acceptable, but it must be stated in the store listing rather than discovered by a user.
- **Patent licensing is a separate axis from copyright licensing.** LGPL governs the source code; MPEG LA / Access Advance govern the patents in H.264. Using an LGPL decoder does not settle patent questions. Our position is the common one: decode-side patent exposure for a free app is materially different from encode-side, and hardware encoding on the device keeps encode royalties with the device vendor. This should be reviewed if the app ever monetises the codec itself.
- **Version drift.** FFmpeg moves. Pin an exact tag and record it in the notices screen so the shipped source offer is accurate.

## Alternatives considered

| Option | Why rejected |
| --- | --- |
| **Keep MediaCodec-only, no fallback** | Simplest and lightest, but leaves the documented `E_VIDEO_DECODER_UNSUPPORTED` cases with no answer. Endorsed only if fallback were a v2 feature. |
| **Full GPL FFmpeg build with libx264** | GPLv3 viral terms; incompatible with a closed-source store app under both LGPLv2.1 and v3 reasoning. |
| **Cisco OpenH264 binary as a downloadable module** | The royalty arrangement attaches to Cisco's own packaging and distribution; bundling in an APK breaks its terms, and self-built source moves the royalty to us. See section 3. |
| **VP9/WebM software encode as the fallback output** | Royalty-free and LGPL-clean, but users share to platforms that want MP4/H.264. Rejected as the default; may return as an explicit "compatibility" option. |
| **Ship Android and iOS together in v1.0** | iOS cross-build is unverifiable on the current machine and doubles the native build surface. Deferred to v1.1. |
| **Statical linking of LGPL FFmpeg** | Smaller and simpler at runtime, but triggers the object-file/relinking obligation of LGPLv2.1 section 6. |

## Verification

This ADR is satisfied when all of the following hold:

- [ ] `scripts/build_ffmpeg_android.sh` builds `arm64-v8a` and `x86_64` with the four required flags, and fails loudly if a GPL library is enabled.
- [ ] `arm64-v8a`/`x86_64` shared libraries are present in the built APK.
- [ ] `cargo-deny` runs in CI with a license allow-list and blocks GPL crates.
- [ ] A source that fails MediaCodec decode succeeds through the FFmpeg path and produces a verified MP4 satisfying the size guarantee.
- [ ] The licenses screen lists FFmpeg under LGPL v2.1 with the pinned source URL.
- [ ] `docs/device_validation_matrix.md` gains a row covering the FFmpeg fallback on a device that lacks the hardware decoder for the fixture.
- [ ] Rust unit tests still pass (`cargo test --manifest-path rust/Cargo.toml`) and no panic path is reachable from a corrupt packet.

## Follow-up decisions still open

1. **Encoder strategy for devices without a usable H.264 hardware encoder.** Options are: accept `E_ENCODER_UNSUPPORTED`, offer VP9/WebM, or offer MPEG-4 Part 2. This ADR does not choose one.
2. **iOS FFmpeg build** (v1.1): toolchain, architecture slices, and static-vs-shared linking under App Store rules.
