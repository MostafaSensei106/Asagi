#!/usr/bin/env bash
set -euo pipefail

ABI="${1:?Android ABI is required}"
RUST_TARGET="${2:?Rust target is required}"
API="${3:?Android API level is required}"
NDK_ROOT="${4:?Android NDK path is required}"
CACHE_ROOT="${5:?FFmpeg cache directory is required}"
JNI_ROOT="${6:?jniLibs output directory is required}"

FFMPEG_TAG="n7.1.5"
SOURCE_DIR="$CACHE_ROOT/source-$FFMPEG_TAG-$ABI"
BUILD_DIR="$CACHE_ROOT/build-$FFMPEG_TAG-$ABI"
PREFIX="$BUILD_DIR/install"
STAMP="$BUILD_DIR/.zumi-build-stamp"
case "$(uname -s)" in
  Linux*) HOST_TAG="linux-x86_64"; TOOL_SUFFIX="" ;;
  Darwin*) HOST_TAG="darwin-x86_64"; TOOL_SUFFIX="" ;;
  MINGW*|MSYS*|CYGWIN*) HOST_TAG="windows-x86_64"; TOOL_SUFFIX=".exe" ;;
  *) echo "Unsupported build host: $(uname -s)" >&2; exit 2 ;;
esac
TOOLCHAIN="$NDK_ROOT/toolchains/llvm/prebuilt/$HOST_TAG/bin"

case "$ABI" in
  arm64-v8a)
    [[ "$RUST_TARGET" == "aarch64-linux-android" ]] || { echo "ABI/target mismatch" >&2; exit 2; }
    FFMPEG_ARCH="aarch64"
    FFMPEG_CPU="armv8-a"
    CLANG_TARGET="aarch64-linux-android$API"
    ;;
  armeabi-v7a)
    [[ "$RUST_TARGET" == "armv7-linux-androideabi" ]] || { echo "ABI/target mismatch" >&2; exit 2; }
    FFMPEG_ARCH="arm"
    FFMPEG_CPU="armv7-a"
    CLANG_TARGET="armv7a-linux-androideabi$API"
    ;;
  x86_64)
    [[ "$RUST_TARGET" == "x86_64-linux-android" ]] || { echo "ABI/target mismatch" >&2; exit 2; }
    FFMPEG_ARCH="x86_64"
    FFMPEG_CPU="x86-64"
    CLANG_TARGET="x86_64-linux-android$API"
    ;;
  *)
    echo "Unsupported Android ABI: $ABI" >&2
    exit 2
    ;;
esac
CPU_FLAGS=()
if [[ "$FFMPEG_ARCH" == "aarch64" || "$FFMPEG_ARCH" == "arm" ]]; then
  CPU_FLAGS+=(--enable-neon)
elif [[ "$FFMPEG_ARCH" == "x86_64" ]]; then
  # NDK builds do not guarantee NASM/YASM is installed on the host.
  CPU_FLAGS+=(--disable-x86asm)
fi

CC="$TOOLCHAIN/clang$TOOL_SUFFIX"
CXX="$TOOLCHAIN/clang++$TOOL_SUFFIX"
AR="$TOOLCHAIN/llvm-ar$TOOL_SUFFIX"
RANLIB="$TOOLCHAIN/llvm-ranlib$TOOL_SUFFIX"
STRIP="$TOOLCHAIN/llvm-strip$TOOL_SUFFIX"
NM="$TOOLCHAIN/llvm-nm$TOOL_SUFFIX"
SYSROOT="$NDK_ROOT/toolchains/llvm/prebuilt/$HOST_TAG/sysroot"
JOBS="${FFMPEG_BUILD_JOBS:-2}"

for tool in "$CC" "$AR" "$RANLIB" "$STRIP" "$NM"; do
  [[ -x "$tool" ]] || { echo "Missing NDK tool: $tool" >&2; exit 2; }
done
command -v git >/dev/null || { echo "git is required to fetch FFmpeg source" >&2; exit 2; }
command -v make >/dev/null || { echo "make is required to build FFmpeg" >&2; exit 2; }
command -v python3 >/dev/null || { echo "python3 is required to write FFmpeg provenance" >&2; exit 2; }

mkdir -p "$CACHE_ROOT" "$BUILD_DIR"
if [[ ! -d "$SOURCE_DIR/.git" ]]; then
  rm -rf "$SOURCE_DIR"
  git clone --depth 1 --branch "$FFMPEG_TAG" https://git.ffmpeg.org/ffmpeg.git "$SOURCE_DIR"
fi
SOURCE_COMMIT="$(git -C "$SOURCE_DIR" rev-parse HEAD)"
SOURCE_TAG="$(git -C "$SOURCE_DIR" describe --exact-match --tags HEAD)"
[[ "$SOURCE_TAG" == "$FFMPEG_TAG" ]] || { echo "FFmpeg source tag mismatch: $SOURCE_TAG" >&2; exit 1; }

required_libs=(libavcodec.so libavformat.so libavfilter.so libavdevice.so libavutil.so libswscale.so libswresample.so)
CONFIGURE_FLAGS=(
  --prefix="$PREFIX"
  --target-os=android
  --arch="$FFMPEG_ARCH"
  --cpu="$FFMPEG_CPU"
  --enable-cross-compile
  --sysroot="$SYSROOT"
  --cc="$CC"
  --cxx="$CXX"
  --ar="$AR"
  --ranlib="$RANLIB"
  --strip="$STRIP"
  --nm="$NM"
  --extra-cflags="--target=$CLANG_TARGET"
  --extra-cxxflags="--target=$CLANG_TARGET"
  --extra-ldflags="--target=$CLANG_TARGET"
  --enable-pic
  "${CPU_FLAGS[@]}"
  --enable-shared
  --disable-static
  --disable-gpl
  --disable-version3
  --disable-nonfree
  --disable-programs
  --disable-doc
  --disable-debug
  --disable-network
  --disable-autodetect
  --disable-everything
  --disable-encoders
  --disable-muxers
  --enable-avcodec
  --enable-avformat
  --enable-avfilter
  --enable-avdevice
  --enable-swscale
  --enable-swresample
  --enable-protocol=file,pipe
  --enable-demuxer=mov,matroska,webm,avi,mpegts,h264,hevc,aac,mp3,ac3,eac3,ogg
  --enable-decoder=h264,hevc,vp8,vp9,av1,prores,aac,mp3,opus,ac3,eac3
  --enable-filter=scale,fps,format,transpose,hflip,vflip,tonemap
)
valid_cached_build=true
[[ -f "$STAMP" && "$(cat "$STAMP")" == "$FFMPEG_TAG|$SOURCE_COMMIT|$ABI|$API|lgpl-shared-v3" ]] || valid_cached_build=false
[[ -f "$PREFIX/include/libavcodec/avcodec.h" ]] || valid_cached_build=false
for library in "${required_libs[@]}"; do
  [[ -s "$PREFIX/lib/$library" ]] || valid_cached_build=false
done

if [[ "$valid_cached_build" != true ]]; then
  rm -rf "$BUILD_DIR"
  mkdir -p "$BUILD_DIR"
  pushd "$SOURCE_DIR" >/dev/null
  make distclean >/dev/null 2>&1 || true

  ./configure "${CONFIGURE_FLAGS[@]}"

  make -j"$JOBS"
  make install
  popd >/dev/null

  for library in "${required_libs[@]}"; do
    [[ -s "$PREFIX/lib/$library" ]] || { echo "FFmpeg did not produce $library for $ABI" >&2; exit 1; }
  done
  printf '%s' "$FFMPEG_TAG|$SOURCE_COMMIT|$ABI|$API|lgpl-shared-v3" > "$STAMP"
fi

mkdir -p "$JNI_ROOT/$ABI"
# Keep SONAME symlinks (for example libavcodec.so.61) alongside linker names.
cp -a "$PREFIX/lib/." "$JNI_ROOT/$ABI/"
printf '%s\n' "$PREFIX/include" > "$BUILD_DIR/include-dir.txt"
printf '%s\n' "$PREFIX/lib" > "$BUILD_DIR/lib-dir.txt"
LICENSE_DIR="$(dirname "$JNI_ROOT")/assets/licenses/ffmpeg"
mkdir -p "$LICENSE_DIR"
cp -f "$SOURCE_DIR/COPYING.LGPLv2.1" "$LICENSE_DIR/LICENSE.LGPLv2.1.$ABI.tmp"
mv -f "$LICENSE_DIR/LICENSE.LGPLv2.1.$ABI.tmp" "$LICENSE_DIR/LICENSE.LGPLv2.1"
python3 - "$LICENSE_DIR/SOURCE_INFO.json.tmp" "$LICENSE_DIR/SOURCE_INFO.json" \
  "$FFMPEG_TAG" "$SOURCE_COMMIT" "$ABI" "$API" "${CONFIGURE_FLAGS[@]}" <<'PY'
import json
import sys

temporary, destination, tag, commit, abi, api, *flags = sys.argv[1:]
machine_flags = (
    "--prefix=", "--sysroot=", "--cc=", "--cxx=", "--ar=", "--ranlib=",
    "--strip=", "--nm=", "--extra-cflags=", "--extra-cxxflags=",
    "--extra-ldflags=", "--arch=", "--cpu=",
)
try:
    with open(destination, encoding="utf-8") as previous:
        info = json.load(previous)
except (FileNotFoundError, json.JSONDecodeError):
    info = {}
if info.get("commit") != commit:
    info = {"builds": {}}
info.update({
    "version": tag[1:] if tag.startswith("n") else tag,
    "tag": tag,
    "commit": commit,
    "source_url": "https://git.ffmpeg.org/ffmpeg.git",
    "license": "LGPL-2.1-or-later",
    "linkage": "shared",
    "external_libraries": [],
})
info.setdefault("builds", {})[abi] = {
    "min_api_level": api,
    "configure_flags": [flag for flag in flags if not flag.startswith(machine_flags)],
}
with open(temporary, "w", encoding="utf-8") as provenance:
    json.dump(info, provenance, indent=2)
    provenance.write("\n")
PY
mv -f "$LICENSE_DIR/SOURCE_INFO.json.tmp" "$LICENSE_DIR/SOURCE_INFO.json"
printf '%s\n' "FFmpeg $FFMPEG_TAG: LGPL shared Android build ($ABI)"
